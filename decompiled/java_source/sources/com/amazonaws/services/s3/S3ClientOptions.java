package com.amazonaws.services.s3;

/* JADX INFO: loaded from: classes2.dex */
public class S3ClientOptions {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f18597a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f18598b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f18599c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f18600d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f18601e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f18602f;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f18603a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f18604b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f18605c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f18606d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f18607e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f18608f;

        private Builder() {
            this.f18603a = false;
            this.f18604b = false;
            this.f18605c = false;
            this.f18606d = false;
            this.f18607e = false;
            this.f18608f = false;
        }

        public S3ClientOptions a() {
            return new S3ClientOptions(this.f18603a, this.f18604b, this.f18605c, this.f18606d, this.f18607e, this.f18608f);
        }

        public Builder b(boolean z10) {
            this.f18606d = z10;
            return this;
        }

        public Builder c(boolean z10) {
            this.f18604b = z10;
            return this;
        }
    }

    @Deprecated
    public S3ClientOptions() {
        this.f18597a = false;
        this.f18598b = false;
        this.f18599c = false;
        this.f18600d = false;
        this.f18601e = false;
        this.f18602f = false;
    }

    public S3ClientOptions(S3ClientOptions s3ClientOptions) {
        this.f18597a = s3ClientOptions.f18597a;
        this.f18598b = s3ClientOptions.f18598b;
        this.f18599c = s3ClientOptions.f18599c;
        this.f18600d = s3ClientOptions.f18600d;
        this.f18601e = s3ClientOptions.f18601e;
        this.f18602f = s3ClientOptions.f18602f;
    }

    private S3ClientOptions(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15) {
        this.f18597a = z10;
        this.f18598b = z11;
        this.f18599c = z12;
        this.f18600d = z13;
        this.f18601e = z14;
        this.f18602f = z15;
    }

    public static Builder a() {
        return new Builder();
    }

    public boolean b() {
        return this.f18600d;
    }

    public boolean c() {
        return this.f18597a;
    }

    public boolean d() {
        return this.f18602f;
    }

    public boolean e() {
        return this.f18598b;
    }
}
