package com.alibaba.sdk.android.oss.network;

import android.os.ParcelFileDescriptor;
import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.common.HttpMethod;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.alibaba.sdk.android.oss.common.utils.CRC64;
import com.alibaba.sdk.android.oss.common.utils.DateUtil;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.alibaba.sdk.android.oss.common.utils.OSSUtils;
import com.alibaba.sdk.android.oss.internal.OSSRetryHandler;
import com.alibaba.sdk.android.oss.internal.OSSRetryType;
import com.alibaba.sdk.android.oss.internal.RequestMessage;
import com.alibaba.sdk.android.oss.internal.ResponseMessage;
import com.alibaba.sdk.android.oss.internal.ResponseParser;
import com.alibaba.sdk.android.oss.internal.ResponseParsers;
import com.alibaba.sdk.android.oss.model.GetObjectRequest;
import com.alibaba.sdk.android.oss.model.ListBucketsRequest;
import com.alibaba.sdk.android.oss.model.OSSRequest;
import com.alibaba.sdk.android.oss.model.OSSResult;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.zip.CheckedInputStream;
import okhttp3.Call;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

/* JADX INFO: loaded from: classes2.dex */
public class OSSRequestTask<T extends OSSResult> implements Callable<T> {
    private OkHttpClient client;
    private ExecutionContext context;
    private int currentRetryCount = 0;
    private RequestMessage message;
    private ResponseParser<T> responseParser;
    private OSSRetryHandler retryHandler;

    /* JADX INFO: renamed from: com.alibaba.sdk.android.oss.network.OSSRequestTask$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$alibaba$sdk$android$oss$common$HttpMethod;

        static {
            int[] iArr = new int[HttpMethod.values().length];
            $SwitchMap$com$alibaba$sdk$android$oss$common$HttpMethod = iArr;
            try {
                iArr[HttpMethod.POST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$alibaba$sdk$android$oss$common$HttpMethod[HttpMethod.PUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$alibaba$sdk$android$oss$common$HttpMethod[HttpMethod.GET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$alibaba$sdk$android$oss$common$HttpMethod[HttpMethod.HEAD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$alibaba$sdk$android$oss$common$HttpMethod[HttpMethod.DELETE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public OSSRequestTask(RequestMessage requestMessage, ResponseParser responseParser, ExecutionContext executionContext, int i11) {
        this.responseParser = responseParser;
        this.message = requestMessage;
        this.context = executionContext;
        this.client = executionContext.getClient();
        this.retryHandler = new OSSRetryHandler(i11);
    }

    private ResponseMessage buildResponseMessage(RequestMessage requestMessage, Response response) {
        ResponseMessage responseMessage = new ResponseMessage();
        responseMessage.setRequest(requestMessage);
        responseMessage.setResponse(response);
        HashMap map = new HashMap();
        Headers headers = response.headers();
        for (int i11 = 0; i11 < headers.size(); i11++) {
            map.put(headers.name(i11), headers.value(i11));
        }
        responseMessage.setHeaders(map);
        responseMessage.setStatusCode(response.code());
        responseMessage.setContentLength(response.body().getContentLength());
        responseMessage.setContent(response.body().byteStream());
        return responseMessage;
    }

    /* JADX WARN: Code duplicated, block: B:65:0x019a A[Catch: Exception -> 0x001a, TryCatch #1 {Exception -> 0x001a, blocks: (B:3:0x0004, B:5:0x000c, B:8:0x001f, B:10:0x0040, B:12:0x0049, B:14:0x0056, B:15:0x0068, B:17:0x006e, B:18:0x0085, B:72:0x01ff, B:29:0x00cc, B:30:0x00d2, B:31:0x00d8, B:35:0x00e3, B:37:0x00f0, B:65:0x019a, B:67:0x01a2, B:68:0x01ad, B:70:0x01ce, B:71:0x01eb, B:40:0x0107, B:42:0x0111, B:45:0x012d, B:46:0x0134, B:47:0x0135, B:49:0x013d, B:52:0x016b, B:58:0x0175, B:59:0x0178, B:60:0x0179, B:62:0x0181, B:63:0x018f, B:13:0x0050, B:90:0x02ca, B:91:0x02d1), top: B:151:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x01a2 A[Catch: Exception -> 0x001a, TryCatch #1 {Exception -> 0x001a, blocks: (B:3:0x0004, B:5:0x000c, B:8:0x001f, B:10:0x0040, B:12:0x0049, B:14:0x0056, B:15:0x0068, B:17:0x006e, B:18:0x0085, B:72:0x01ff, B:29:0x00cc, B:30:0x00d2, B:31:0x00d8, B:35:0x00e3, B:37:0x00f0, B:65:0x019a, B:67:0x01a2, B:68:0x01ad, B:70:0x01ce, B:71:0x01eb, B:40:0x0107, B:42:0x0111, B:45:0x012d, B:46:0x0134, B:47:0x0135, B:49:0x013d, B:52:0x016b, B:58:0x0175, B:59:0x0178, B:60:0x0179, B:62:0x0181, B:63:0x018f, B:13:0x0050, B:90:0x02ca, B:91:0x02d1), top: B:151:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x01cc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x01ce A[Catch: Exception -> 0x001a, TryCatch #1 {Exception -> 0x001a, blocks: (B:3:0x0004, B:5:0x000c, B:8:0x001f, B:10:0x0040, B:12:0x0049, B:14:0x0056, B:15:0x0068, B:17:0x006e, B:18:0x0085, B:72:0x01ff, B:29:0x00cc, B:30:0x00d2, B:31:0x00d8, B:35:0x00e3, B:37:0x00f0, B:65:0x019a, B:67:0x01a2, B:68:0x01ad, B:70:0x01ce, B:71:0x01eb, B:40:0x0107, B:42:0x0111, B:45:0x012d, B:46:0x0134, B:47:0x0135, B:49:0x013d, B:52:0x016b, B:58:0x0175, B:59:0x0178, B:60:0x0179, B:62:0x0181, B:63:0x018f, B:13:0x0050, B:90:0x02ca, B:91:0x02d1), top: B:151:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x01eb A[Catch: Exception -> 0x001a, TryCatch #1 {Exception -> 0x001a, blocks: (B:3:0x0004, B:5:0x000c, B:8:0x001f, B:10:0x0040, B:12:0x0049, B:14:0x0056, B:15:0x0068, B:17:0x006e, B:18:0x0085, B:72:0x01ff, B:29:0x00cc, B:30:0x00d2, B:31:0x00d8, B:35:0x00e3, B:37:0x00f0, B:65:0x019a, B:67:0x01a2, B:68:0x01ad, B:70:0x01ce, B:71:0x01eb, B:40:0x0107, B:42:0x0111, B:45:0x012d, B:46:0x0134, B:47:0x0135, B:49:0x013d, B:52:0x016b, B:58:0x0175, B:59:0x0178, B:60:0x0179, B:62:0x0181, B:63:0x018f, B:13:0x0050, B:90:0x02ca, B:91:0x02d1), top: B:151:0x0004 }] */
    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        Call callNewCall;
        Request requestBuild;
        Exception clientException;
        ResponseMessage responseMessageBuildResponseMessage;
        long statSize;
        String stringBody;
        InputStream content;
        long contentLength;
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor;
        try {
            if (this.context.getApplicationContext() != null) {
                OSSLog.logInfo(OSSUtils.buildBaseLogInfo(this.context.getApplicationContext()));
            }
            OSSLog.logDebug("[call] - ");
            OSSRequest request = this.context.getRequest();
            OSSUtils.ensureRequestValid(request, this.message);
            OSSUtils.signRequest(this.message);
            if (this.context.getCancellationHandler().isCancelled()) {
                throw new InterruptedIOException("This task is cancelled!");
            }
            Request.Builder builderUrl = new Request.Builder().url(request instanceof ListBucketsRequest ? this.message.buildOSSServiceURL() : this.message.buildCanonicalURL());
            for (String str : this.message.getHeaders().keySet()) {
                builderUrl = builderUrl.addHeader(str, (String) this.message.getHeaders().get(str));
            }
            String str2 = (String) this.message.getHeaders().get(HttpHeaders.CONTENT_TYPE);
            OSSLog.logDebug("request method = " + this.message.getMethod());
            int i11 = AnonymousClass1.$SwitchMap$com$alibaba$sdk$android$oss$common$HttpMethod[this.message.getMethod().ordinal()];
            if (i11 == 1 || i11 == 2) {
                OSSUtils.assertTrue(str2 != null, "Content type can't be null when upload!");
                if (this.message.getUploadData() != null) {
                    content = new ByteArrayInputStream(this.message.getUploadData());
                    contentLength = this.message.getUploadData().length;
                } else {
                    if (this.message.getUploadFilePath() != null) {
                        File file = new File(this.message.getUploadFilePath());
                        FileInputStream fileInputStream = new FileInputStream(file);
                        long length = file.length();
                        if (length <= 0) {
                            throw new ClientException("the length of file is 0!");
                        }
                        stringBody = null;
                        content = fileInputStream;
                        statSize = length;
                    } else if (this.message.getUploadUri() != null) {
                        content = this.context.getApplicationContext().getContentResolver().openInputStream(this.message.getUploadUri());
                        try {
                            parcelFileDescriptorOpenFileDescriptor = this.context.getApplicationContext().getContentResolver().openFileDescriptor(this.message.getUploadUri(), CampaignEx.JSON_KEY_AD_R);
                            try {
                                statSize = parcelFileDescriptorOpenFileDescriptor.getStatSize();
                                parcelFileDescriptorOpenFileDescriptor.close();
                                stringBody = null;
                            } catch (Throwable th2) {
                                th = th2;
                                if (parcelFileDescriptorOpenFileDescriptor != null) {
                                    parcelFileDescriptorOpenFileDescriptor.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            parcelFileDescriptorOpenFileDescriptor = null;
                        }
                    } else if (this.message.getContent() != null) {
                        content = this.message.getContent();
                        contentLength = this.message.getContentLength();
                    } else {
                        statSize = 0;
                        stringBody = this.message.getStringBody();
                        content = null;
                    }
                    if (content != null) {
                        if (this.message.isCheckCRC64()) {
                            content = new CheckedInputStream(content, new CRC64());
                        }
                        this.message.setContent(content);
                        this.message.setContentLength(statSize);
                        builderUrl = builderUrl.method(this.message.getMethod().toString(), NetworkProgressHelper.addProgressRequestBody(content, statSize, str2, this.context));
                    } else if (stringBody != null) {
                        builderUrl = builderUrl.method(this.message.getMethod().toString(), RequestBody.create(MediaType.parse(str2), stringBody.getBytes("UTF-8")));
                    } else {
                        builderUrl = builderUrl.method(this.message.getMethod().toString(), RequestBody.create((MediaType) null, new byte[0]));
                    }
                }
                statSize = contentLength;
                stringBody = null;
                if (content != null) {
                    if (this.message.isCheckCRC64()) {
                        content = new CheckedInputStream(content, new CRC64());
                    }
                    this.message.setContent(content);
                    this.message.setContentLength(statSize);
                    builderUrl = builderUrl.method(this.message.getMethod().toString(), NetworkProgressHelper.addProgressRequestBody(content, statSize, str2, this.context));
                } else if (stringBody != null) {
                    builderUrl = builderUrl.method(this.message.getMethod().toString(), RequestBody.create(MediaType.parse(str2), stringBody.getBytes("UTF-8")));
                } else {
                    builderUrl = builderUrl.method(this.message.getMethod().toString(), RequestBody.create((MediaType) null, new byte[0]));
                }
            } else if (i11 == 3) {
                builderUrl = builderUrl.get();
            } else if (i11 == 4) {
                builderUrl = builderUrl.head();
            } else if (i11 == 5) {
                builderUrl = builderUrl.delete();
            }
            requestBuild = builderUrl.build();
            try {
                if (request instanceof GetObjectRequest) {
                    this.client = NetworkProgressHelper.addProgressResponseListener(this.client, this.context);
                    OSSLog.logDebug("getObject");
                }
                callNewCall = this.client.newCall(requestBuild);
                try {
                    this.context.getCancellationHandler().setCall(callNewCall);
                    Response responseExecute = FirebasePerfOkHttpClient.execute(callNewCall);
                    if (OSSLog.isEnableLog()) {
                        Map<String, List<String>> multimap = responseExecute.headers().toMultimap();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("response:---------------------\n");
                        sb2.append("response code: " + responseExecute.code() + " for url: " + requestBuild.url() + "\n");
                        for (String str3 : multimap.keySet()) {
                            sb2.append("responseHeader [" + str3 + "]: ");
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(multimap.get(str3).get(0));
                            sb3.append("\n");
                            sb2.append(sb3.toString());
                        }
                        OSSLog.logDebug(sb2.toString());
                    }
                    responseMessageBuildResponseMessage = buildResponseMessage(this.message, responseExecute);
                    clientException = null;
                } catch (Exception e11) {
                    e = e11;
                    OSSLog.logError("Encounter local execpiton: " + e.toString());
                    if (OSSLog.isEnableLog()) {
                        e.printStackTrace();
                    }
                    clientException = new ClientException(e.getMessage(), e);
                    responseMessageBuildResponseMessage = null;
                }
            } catch (Exception e12) {
                e = e12;
                callNewCall = null;
            }
            if (clientException == null && (responseMessageBuildResponseMessage.getStatusCode() == 203 || responseMessageBuildResponseMessage.getStatusCode() >= 300)) {
                clientException = ResponseParsers.parseResponseErrorXML(responseMessageBuildResponseMessage, requestBuild.method().equals("HEAD"));
            } else if (clientException == null) {
                try {
                    T t11 = (T) this.responseParser.parse(responseMessageBuildResponseMessage);
                    if (this.context.getCompletedCallback() != null) {
                        this.context.getCompletedCallback().onSuccess(this.context.getRequest(), t11);
                    }
                    return t11;
                } catch (IOException e13) {
                    clientException = new ClientException(e13.getMessage(), e13);
                }
            }
            if ((callNewCall != null && callNewCall.getCanceled()) || this.context.getCancellationHandler().isCancelled()) {
                clientException = new ClientException("Task is cancelled!", clientException.getCause(), Boolean.TRUE);
            }
            OSSRetryType oSSRetryTypeShouldRetry = this.retryHandler.shouldRetry(clientException, this.currentRetryCount);
            OSSLog.logError("[run] - retry, retry type: " + oSSRetryTypeShouldRetry);
            if (oSSRetryTypeShouldRetry == OSSRetryType.OSSRetryTypeShouldRetry) {
                this.currentRetryCount++;
                if (this.context.getRetryCallback() != null) {
                    this.context.getRetryCallback().onRetryCallback();
                }
                try {
                    Thread.sleep(this.retryHandler.timeInterval(this.currentRetryCount, oSSRetryTypeShouldRetry));
                } catch (InterruptedException e14) {
                    Thread.currentThread().interrupt();
                    e14.printStackTrace();
                }
                return (T) call();
            }
            if (oSSRetryTypeShouldRetry != OSSRetryType.OSSRetryTypeShouldFixedTimeSkewedAndRetry) {
                if (clientException instanceof ClientException) {
                    if (this.context.getCompletedCallback() == null) {
                        throw clientException;
                    }
                    this.context.getCompletedCallback().onFailure(this.context.getRequest(), (ClientException) clientException, null);
                    throw clientException;
                }
                if (this.context.getCompletedCallback() == null) {
                    throw clientException;
                }
                this.context.getCompletedCallback().onFailure(this.context.getRequest(), null, (ServiceException) clientException);
                throw clientException;
            }
            if (responseMessageBuildResponseMessage != null) {
                String str4 = (String) responseMessageBuildResponseMessage.getHeaders().get(HttpHeaders.DATE);
                try {
                    DateUtil.setCurrentServerTime(DateUtil.parseRfc822Date(str4).getTime());
                    this.message.getHeaders().put(HttpHeaders.DATE, str4);
                } catch (Exception unused) {
                    OSSLog.logError("[error] - synchronize time, reponseDate:" + str4);
                }
            }
            this.currentRetryCount++;
            if (this.context.getRetryCallback() != null) {
                this.context.getRetryCallback().onRetryCallback();
            }
            return (T) call();
        } catch (Exception e15) {
            e = e15;
            callNewCall = null;
            requestBuild = null;
        }
    }
}
