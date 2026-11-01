package com.mbridge.msdk.playercommon.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public interface DataSource {

    public interface Factory {
        DataSource createDataSource();
    }

    void close() throws IOException;

    @Nullable
    Uri getUri();

    long open(DataSpec dataSpec) throws IOException;

    int read(byte[] bArr, int i11, int i12) throws IOException;
}
