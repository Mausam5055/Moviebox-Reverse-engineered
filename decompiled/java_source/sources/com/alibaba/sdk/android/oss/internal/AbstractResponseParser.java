package com.alibaba.sdk.android.oss.internal;

import com.alibaba.sdk.android.oss.common.OSSHeaders;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.alibaba.sdk.android.oss.common.utils.CaseInsensitiveHashMap;
import com.alibaba.sdk.android.oss.model.OSSResult;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.ParameterizedType;
import java.math.BigInteger;
import java.util.zip.CheckedInputStream;
import okhttp3.Headers;
import okhttp3.Response;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractResponseParser<T extends OSSResult> implements ResponseParser {
    private CaseInsensitiveHashMap<String, String> parseResponseHeader(Response response) {
        CaseInsensitiveHashMap<String, String> caseInsensitiveHashMap = new CaseInsensitiveHashMap<>();
        Headers headers = response.headers();
        for (int i11 = 0; i11 < headers.size(); i11++) {
            caseInsensitiveHashMap.put(headers.name(i11), headers.value(i11));
        }
        return caseInsensitiveHashMap;
    }

    public static void safeCloseResponse(ResponseMessage responseMessage) {
        try {
            responseMessage.close();
        } catch (Exception unused) {
        }
    }

    public boolean needCloseResponse() {
        return true;
    }

    @Override // com.alibaba.sdk.android.oss.internal.ResponseParser
    public T parse(ResponseMessage responseMessage) throws IOException {
        try {
            try {
                T t11 = (T) ((Class) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0]).newInstance();
                if (t11 != null) {
                    t11.setRequestId((String) responseMessage.getHeaders().get(OSSHeaders.OSS_HEADER_REQUEST_ID));
                    t11.setStatusCode(responseMessage.getStatusCode());
                    t11.setResponseHeader(parseResponseHeader(responseMessage.getResponse()));
                    setCRC(t11, responseMessage);
                    t11 = (T) parseData(responseMessage, t11);
                }
                if (needCloseResponse()) {
                    safeCloseResponse(responseMessage);
                }
                return t11;
            } catch (Exception e11) {
                IOException iOException = new IOException(e11.getMessage(), e11);
                e11.printStackTrace();
                OSSLog.logThrowable2Local(e11);
                throw iOException;
            }
        } catch (Throwable th2) {
            if (needCloseResponse()) {
                safeCloseResponse(responseMessage);
            }
            throw th2;
        }
    }

    abstract T parseData(ResponseMessage responseMessage, T t11) throws Exception;

    public <Result extends OSSResult> void setCRC(Result result, ResponseMessage responseMessage) {
        InputStream content = responseMessage.getRequest().getContent();
        if (content != null && (content instanceof CheckedInputStream)) {
            result.setClientCRC(Long.valueOf(((CheckedInputStream) content).getChecksum().getValue()));
        }
        String str = (String) responseMessage.getHeaders().get(OSSHeaders.OSS_HASH_CRC64_ECMA);
        if (str != null) {
            result.setServerCRC(Long.valueOf(new BigInteger(str).longValue()));
        }
    }
}
