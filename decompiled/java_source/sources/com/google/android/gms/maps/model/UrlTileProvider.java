package com.google.android.gms.maps.model;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

/* JADX INFO: loaded from: classes4.dex */
public abstract class UrlTileProvider implements TileProvider {
    private final int height;
    private final int width;

    public UrlTileProvider(int i11, int i12) {
        this.width = i11;
        this.height = i12;
    }

    @Override // com.google.android.gms.maps.model.TileProvider
    public final Tile getTile(int i11, int i12, int i13) {
        URL tileUrl = getTileUrl(i11, i12, i13);
        if (tileUrl == null) {
            return TileProvider.NO_TILE;
        }
        try {
            int i14 = this.width;
            int i15 = this.height;
            InputStream inputStreamOpenStream = tileUrl.openStream();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[4096];
            while (true) {
                int i16 = inputStreamOpenStream.read(bArr);
                if (i16 == -1) {
                    return new Tile(i14, i15, byteArrayOutputStream.toByteArray());
                }
                byteArrayOutputStream.write(bArr, 0, i16);
            }
        } catch (IOException unused) {
            return null;
        }
    }

    public abstract URL getTileUrl(int i11, int i12, int i13);
}
