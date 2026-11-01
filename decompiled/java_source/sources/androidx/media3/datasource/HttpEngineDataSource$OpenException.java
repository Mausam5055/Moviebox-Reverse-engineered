package androidx.media3.datasource;

import java.io.IOException;
import w1.h;

/* JADX INFO: loaded from: classes2.dex */
public final class HttpEngineDataSource$OpenException extends HttpDataSource.HttpDataSourceException {
    public final int httpEngineConnectionStatus;

    public HttpEngineDataSource$OpenException(IOException iOException, h hVar, int i11, int i12) {
        super(iOException, hVar, i11, 1);
        this.httpEngineConnectionStatus = i12;
    }

    public HttpEngineDataSource$OpenException(String str, h hVar, int i11, int i12) {
        super(str, hVar, i11, 1);
        this.httpEngineConnectionStatus = i12;
    }

    public HttpEngineDataSource$OpenException(h hVar, int i11, int i12) {
        super(hVar, i11, 1);
        this.httpEngineConnectionStatus = i12;
    }
}
