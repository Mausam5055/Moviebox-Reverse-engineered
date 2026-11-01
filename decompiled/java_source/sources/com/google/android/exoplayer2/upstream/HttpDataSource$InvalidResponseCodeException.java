package com.google.android.exoplayer2.upstream;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.p0;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class HttpDataSource$InvalidResponseCodeException extends HttpDataSource$HttpDataSourceException {
    public final Map<String, List<String>> headerFields;
    public final byte[] responseBody;
    public final int responseCode;

    @Nullable
    public final String responseMessage;

    public HttpDataSource$InvalidResponseCodeException(int i11, @Nullable String str, @Nullable IOException iOException, Map<String, List<String>> map, n nVar, byte[] bArr) {
        super("Response code: " + i11, iOException, nVar, 2004, 1);
        this.responseCode = i11;
        this.responseMessage = str;
        this.headerFields = map;
        this.responseBody = bArr;
    }

    @Deprecated
    public HttpDataSource$InvalidResponseCodeException(int i11, @Nullable String str, Map<String, List<String>> map, n nVar) {
        this(i11, str, null, map, nVar, p0.f27631f);
    }

    @Deprecated
    public HttpDataSource$InvalidResponseCodeException(int i11, Map<String, List<String>> map, n nVar) {
        this(i11, null, null, map, nVar, p0.f27631f);
    }
}
