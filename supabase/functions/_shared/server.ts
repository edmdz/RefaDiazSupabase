// supabase/functions/_shared/server.ts
import { serve } from 'https://deno.land/std@0.177.0/http/server.ts';
import { corsHeaders, handleCors } from './cors.ts';

export const serveWithCors = (handler: (req: Request) => Promise<Response>) => {
  serve(async (req: Request) => {
    const corsResponse = handleCors(req);
    if (corsResponse) return corsResponse;
    const response = await handler(req);
    response.headers.set('Access-Control-Allow-Origin', corsHeaders['Access-Control-Allow-Origin']);
    response.headers.set('Access-Control-Allow-Methods', corsHeaders['Access-Control-Allow-Methods']);
    response.headers.set('Access-Control-Allow-Headers', corsHeaders['Access-Control-Allow-Headers']);
    return response;
  });
};