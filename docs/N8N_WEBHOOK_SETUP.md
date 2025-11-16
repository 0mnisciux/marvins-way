# N8N Webhook Configuration for Meta/Facebook - Production Setup

## Problem
Webhook was returning: "The callback URL or verify token couldn't be validated. Please verify the provided information or try again later."

## Root Cause
The webhook was in test mode and lacked the required response headers that Meta's verification process needs.

## Solution Implemented

### 1. Activated Production Workflow
- Enabled the "Active" toggle in n8n (top right)
- Saved the workflow in production mode
- This allows the webhook to listen 24/7 on the production URL, not just during manual testing

### 2. Configured Respond to Webhook Node
- **Response Body**: Set to expression: `{{ $('Webhook').item.json.query['hub.challenge'] }}`
  - This echoes back Meta's verification challenge parameter exactly as required
- **Response Headers**: Added `Content-Type: text/plain`
  - Meta requires this header to properly validate the response
- **HTTP Methods**: Both GET and POST enabled
- **Respond Mode**: Set to "Using Respond to Webhook Node"

### 3. Webhook Details
- **Production URL**: `https://n8n.orin.work/webhook/3e369b98-dc87-46f7-9602-d45d5859827c`
- **HTTP Methods**: GET, POST
- **Path**: `3e369b98-dc87-46f7-9602-d45d5859827c`
- **Authentication**: None
- **Respond**: Using Respond to Webhook Node

## How Meta Verification Works Now

1. Meta sends a GET request to your webhook with parameters: `hub.challenge` and `hub.verify_token`
2. Your n8n webhook receives this GET request
3. The Respond to Webhook node extracts and echoes the `hub.challenge` value
4. Response is sent with:
   - Status Code: 200 (OK)
   - Content-Type: text/plain header
   - Body: The challenge value
5. Meta validates this matches their verification requirements

## To Complete Meta Setup

In your Meta Developer Console:
1. Navigate to your app's Webhook settings
2. Enter Callback URL: `https://n8n.orin.work/webhook/3e369b98-dc87-46f7-9602-d45d5859827c`
3. Enter your Verify Token (must match what you configured in Meta)
4. Click "Verify and Save"
5. Meta will automatically test the webhook and confirm it works

## Status
- **Production Ready**: Workflow is active and properly configured for Meta webhook verification
- **Date Configured**: November 16, 2025

## Technical Stack
- **Platform**: n8n (open-source workflow automation)
- **Webhook Node**: Webhook (HTTP trigger)
- **Response Node**: Respond to Webhook
- **Integration**: Meta/Facebook Webhooks API
- **URL**: HTTPS (Production)
- **Response Format**: Plain text with challenge echo
