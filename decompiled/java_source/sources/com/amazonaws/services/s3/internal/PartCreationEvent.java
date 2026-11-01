package com.amazonaws.services.s3.internal;

import com.amazonaws.services.s3.OnFileDelete;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class PartCreationEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f18650a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f18651b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f18652c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final OnFileDelete f18653d;

    PartCreationEvent(File file, int i11, boolean z10, OnFileDelete onFileDelete) {
        if (file == null) {
            throw new IllegalArgumentException("part must not be specified");
        }
        this.f18650a = file;
        this.f18651b = i11;
        this.f18652c = z10;
        this.f18653d = onFileDelete;
    }

    public OnFileDelete a() {
        return this.f18653d;
    }

    public File b() {
        return this.f18650a;
    }

    public int c() {
        return this.f18651b;
    }

    public boolean d() {
        return this.f18652c;
    }
}
