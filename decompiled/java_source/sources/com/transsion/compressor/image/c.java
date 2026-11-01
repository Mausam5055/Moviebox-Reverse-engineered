package com.transsion.compressor.image;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private InputStream f43991a;

    public abstract InputStream a();

    @Override // com.transsion.compressor.image.d
    public void close() {
        InputStream inputStream = this.f43991a;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            } finally {
                this.f43991a = null;
            }
        }
    }

    @Override // com.transsion.compressor.image.d
    public InputStream open() {
        close();
        InputStream inputStreamA = a();
        this.f43991a = inputStreamA;
        return inputStreamA;
    }
}
