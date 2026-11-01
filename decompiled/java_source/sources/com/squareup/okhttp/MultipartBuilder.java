package com.squareup.okhttp;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.squareup.okhttp.internal.g;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;

/* JADX INFO: loaded from: classes5.dex */
public final class MultipartBuilder {
    private final ByteString boundary;
    private final List<RequestBody> partBodies;
    private final List<Headers> partHeaders;
    private MediaType type;
    public static final MediaType MIXED = MediaType.parse("multipart/mixed");
    public static final MediaType ALTERNATIVE = MediaType.parse("multipart/alternative");
    public static final MediaType DIGEST = MediaType.parse("multipart/digest");
    public static final MediaType PARALLEL = MediaType.parse("multipart/parallel");
    public static final MediaType FORM = MediaType.parse("multipart/form-data");
    private static final byte[] COLONSPACE = {58, 32};
    private static final byte[] CRLF = {13, 10};
    private static final byte[] DASHDASH = {45, 45};

    private static final class MultipartRequestBody extends RequestBody {
        private final ByteString boundary;
        private long contentLength = -1;
        private final MediaType contentType;
        private final List<RequestBody> partBodies;
        private final List<Headers> partHeaders;

        public MultipartRequestBody(MediaType mediaType, ByteString byteString, List<Headers> list, List<RequestBody> list2) {
            if (mediaType == null) {
                throw new NullPointerException("type == null");
            }
            this.boundary = byteString;
            this.contentType = MediaType.parse(mediaType + "; boundary=" + byteString.utf8());
            this.partHeaders = g.j(list);
            this.partBodies = g.j(list2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private long writeOrCountBytes(BufferedSink bufferedSink, boolean z10) throws IOException {
            Buffer buffer;
            if (z10) {
                bufferedSink = new Buffer();
                buffer = bufferedSink;
            } else {
                buffer = 0;
            }
            int size = this.partHeaders.size();
            long j11 = 0;
            for (int i11 = 0; i11 < size; i11++) {
                Headers headers = this.partHeaders.get(i11);
                RequestBody requestBody = this.partBodies.get(i11);
                bufferedSink.write(MultipartBuilder.DASHDASH);
                bufferedSink.write(this.boundary);
                bufferedSink.write(MultipartBuilder.CRLF);
                if (headers != null) {
                    int size2 = headers.size();
                    for (int i12 = 0; i12 < size2; i12++) {
                        bufferedSink.writeUtf8(headers.name(i12)).write(MultipartBuilder.COLONSPACE).writeUtf8(headers.value(i12)).write(MultipartBuilder.CRLF);
                    }
                }
                MediaType mediaTypeContentType = requestBody.contentType();
                if (mediaTypeContentType != null) {
                    bufferedSink.writeUtf8("Content-Type: ").writeUtf8(mediaTypeContentType.toString()).write(MultipartBuilder.CRLF);
                }
                long jContentLength = requestBody.contentLength();
                if (jContentLength != -1) {
                    bufferedSink.writeUtf8("Content-Length: ").writeDecimalLong(jContentLength).write(MultipartBuilder.CRLF);
                } else if (z10) {
                    buffer.clear();
                    return -1L;
                }
                bufferedSink.write(MultipartBuilder.CRLF);
                if (z10) {
                    j11 += jContentLength;
                } else {
                    this.partBodies.get(i11).writeTo(bufferedSink);
                }
                bufferedSink.write(MultipartBuilder.CRLF);
            }
            bufferedSink.write(MultipartBuilder.DASHDASH);
            bufferedSink.write(this.boundary);
            bufferedSink.write(MultipartBuilder.DASHDASH);
            bufferedSink.write(MultipartBuilder.CRLF);
            if (!z10) {
                return j11;
            }
            long size3 = j11 + buffer.size();
            buffer.clear();
            return size3;
        }

        @Override // com.squareup.okhttp.RequestBody
        public long contentLength() throws IOException {
            long j11 = this.contentLength;
            if (j11 != -1) {
                return j11;
            }
            long jWriteOrCountBytes = writeOrCountBytes(null, true);
            this.contentLength = jWriteOrCountBytes;
            return jWriteOrCountBytes;
        }

        @Override // com.squareup.okhttp.RequestBody
        public MediaType contentType() {
            return this.contentType;
        }

        @Override // com.squareup.okhttp.RequestBody
        public void writeTo(BufferedSink bufferedSink) throws IOException {
            writeOrCountBytes(bufferedSink, false);
        }
    }

    public MultipartBuilder() {
        this(UUID.randomUUID().toString());
    }

    public MultipartBuilder(String str) {
        this.type = MIXED;
        this.partHeaders = new ArrayList();
        this.partBodies = new ArrayList();
        this.boundary = ByteString.encodeUtf8(str);
    }

    private static StringBuilder appendQuotedString(StringBuilder sb2, String str) {
        sb2.append('\"');
        int length = str.length();
        for (int i11 = 0; i11 < length; i11++) {
            char cCharAt = str.charAt(i11);
            if (cCharAt == '\n') {
                sb2.append("%0A");
            } else if (cCharAt == '\r') {
                sb2.append("%0D");
            } else if (cCharAt != '\"') {
                sb2.append(cCharAt);
            } else {
                sb2.append("%22");
            }
        }
        sb2.append('\"');
        return sb2;
    }

    public MultipartBuilder addFormDataPart(String str, String str2) {
        return addFormDataPart(str, null, RequestBody.create((MediaType) null, str2));
    }

    public MultipartBuilder addFormDataPart(String str, String str2, RequestBody requestBody) {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        StringBuilder sb2 = new StringBuilder("form-data; name=");
        appendQuotedString(sb2, str);
        if (str2 != null) {
            sb2.append("; filename=");
            appendQuotedString(sb2, str2);
        }
        return addPart(Headers.of(HttpHeaders.CONTENT_DISPOSITION, sb2.toString()), requestBody);
    }

    public MultipartBuilder addPart(Headers headers, RequestBody requestBody) {
        if (requestBody == null) {
            throw new NullPointerException("body == null");
        }
        if (headers != null && headers.get(HttpHeaders.CONTENT_TYPE) != null) {
            throw new IllegalArgumentException("Unexpected header: Content-Type");
        }
        if (headers != null && headers.get(HttpHeaders.CONTENT_LENGTH) != null) {
            throw new IllegalArgumentException("Unexpected header: Content-Length");
        }
        this.partHeaders.add(headers);
        this.partBodies.add(requestBody);
        return this;
    }

    public MultipartBuilder addPart(RequestBody requestBody) {
        return addPart(null, requestBody);
    }

    public RequestBody build() {
        if (this.partHeaders.isEmpty()) {
            throw new IllegalStateException("Multipart body must have at least one part.");
        }
        return new MultipartRequestBody(this.type, this.boundary, this.partHeaders, this.partBodies);
    }

    public MultipartBuilder type(MediaType mediaType) {
        if (mediaType == null) {
            throw new NullPointerException("type == null");
        }
        if (mediaType.type().equals("multipart")) {
            this.type = mediaType;
            return this;
        }
        throw new IllegalArgumentException("multipart != " + mediaType);
    }
}
