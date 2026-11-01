import crypto from 'crypto';

const ONLINE_SECRET = '76iRl07s0xSN9jqmEWAt79EBJZulIQIsV64FZr2O';
const TEST_SECRET = 'Xqn2nnO41/L92o1iuXhSLHTbXvY4Z5ZZ62m8mSLA';

/**
 * Reconstructed Transsion Gateway HMAC-SHA256 Signing Algorithm
 * Derived directly from decompiled:
 * com.transsion.api.gateway.interceptor.GatewayInterceptor.doGzipOrSign()
 */
export function generateGatewayHeaders(path, queryParams = '', body = '', headers = {}, useTestKey = false) {
  const secret = useTestKey ? TEST_SECRET : ONLINE_SECRET;
  
  const accept = headers['accept'] || 'application/json, text/plain, */*';
  const contentType = headers['content-type'] || (body ? 'application/json' : '');
  const contentLength = body ? Buffer.byteLength(body, 'utf-8').toString() : '';

  // Body MD5 calculation: slice first 102,400 bytes if larger
  let bodyDigest = '';
  if (body) {
    const bodyBuffer = Buffer.from(body, 'utf-8');
    const sliceBuffer = bodyBuffer.length > 102400 ? bodyBuffer.subarray(0, 102400) : bodyBuffer;
    bodyDigest = crypto.createHash('md5').update(sliceBuffer).digest('hex').toLowerCase();
  }

  // Build canonical string exactly as in Dalvik/JNI
  const canonicalString = `${accept}\n${contentType}\n${contentLength}\n${bodyDigest}\n${path}\n${queryParams}`;

  // HMAC-SHA256 signature
  const hmacDigest = crypto.createHmac('sha256', secret).update(canonicalString).digest('hex').toLowerCase();
  const timestamp = Date.now();

  return {
    'accept': accept,
    'content-type': contentType || 'application/json',
    'x-tr-signature-method': 'HmacSHA256',
    'x-tr-signature': `${timestamp}|2|${hmacDigest}`,
    'user-agent': 'MovieBox/4.0.03.0930.03 (Linux; Android 15; Mobile)',
    'x-client-version': '4.0.03.0930.03',
    'x-client-channel': 'ps'
  };
}

export default {
  generateGatewayHeaders,
  ONLINE_SECRET,
  TEST_SECRET
};

