package com.vungle.ads.internal.downloader;

import java.io.File;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public interface a {

    /* JADX INFO: renamed from: com.vungle.ads.internal.downloader.a$a, reason: collision with other inner class name */
    public static final class C0702a {
        public static final C0703a Companion = new C0703a(null);
        public static final int DEFAULT_SERVER_CODE = -1;
        private final Throwable cause;

        @b
        private final int reason;
        private final int serverCode;

        /* JADX INFO: renamed from: com.vungle.ads.internal.downloader.a$a$a, reason: collision with other inner class name */
        public static final class C0703a {
            private C0703a() {
            }

            public /* synthetic */ C0703a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        /* JADX INFO: renamed from: com.vungle.ads.internal.downloader.a$a$b */
        @Retention(RetentionPolicy.RUNTIME)
        public @interface b {
            public static final C0704a Companion = C0704a.$$INSTANCE;

            /* JADX INFO: renamed from: com.vungle.ads.internal.downloader.a$a$b$a, reason: collision with other inner class name */
            public static final class C0704a {
                private static int CONNECTION_ERROR;
                static final /* synthetic */ C0704a $$INSTANCE = new C0704a();
                private static int REQUEST_ERROR = 1;
                private static int DISK_ERROR = 2;
                private static int FILE_NOT_FOUND_ERROR = 3;
                private static int INTERNAL_ERROR = 4;

                private C0704a() {
                }

                public final int getCONNECTION_ERROR() {
                    return CONNECTION_ERROR;
                }

                public final int getDISK_ERROR() {
                    return DISK_ERROR;
                }

                public final int getFILE_NOT_FOUND_ERROR() {
                    return FILE_NOT_FOUND_ERROR;
                }

                public final int getINTERNAL_ERROR() {
                    return INTERNAL_ERROR;
                }

                public final int getREQUEST_ERROR() {
                    return REQUEST_ERROR;
                }

                public final void setCONNECTION_ERROR(int i11) {
                    CONNECTION_ERROR = i11;
                }

                public final void setDISK_ERROR(int i11) {
                    DISK_ERROR = i11;
                }

                public final void setFILE_NOT_FOUND_ERROR(int i11) {
                    FILE_NOT_FOUND_ERROR = i11;
                }

                public final void setINTERNAL_ERROR(int i11) {
                    INTERNAL_ERROR = i11;
                }

                public final void setREQUEST_ERROR(int i11) {
                    REQUEST_ERROR = i11;
                }
            }
        }

        public C0702a(int i11, Throwable cause, int i12) {
            Intrinsics.h(cause, "cause");
            this.serverCode = i11;
            this.cause = cause;
            this.reason = i12;
        }

        public final Throwable getCause() {
            return this.cause;
        }

        public final int getReason() {
            return this.reason;
        }

        public final int getServerCode() {
            return this.serverCode;
        }
    }

    public static final class b {
        public static final C0705a Companion = new C0705a(null);
        private int progressPercent;
        private long sizeBytes;
        private long startBytes;
        private int status;
        private long timestampDownloadStart;

        /* JADX INFO: renamed from: com.vungle.ads.internal.downloader.a$b$a, reason: collision with other inner class name */
        public static final class C0705a {
            private C0705a() {
            }

            public /* synthetic */ C0705a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final b copy(b progress) {
                Intrinsics.h(progress, "progress");
                b bVar = new b();
                bVar.setStatus(progress.getStatus());
                bVar.setProgressPercent(progress.getProgressPercent());
                bVar.setTimestampDownloadStart(progress.getTimestampDownloadStart());
                bVar.setSizeBytes(progress.getSizeBytes());
                bVar.setStartBytes(progress.getStartBytes());
                return bVar;
            }
        }

        /* JADX INFO: renamed from: com.vungle.ads.internal.downloader.a$b$b, reason: collision with other inner class name */
        @Retention(RetentionPolicy.RUNTIME)
        public @interface InterfaceC0706b {
            public static final C0707a Companion = C0707a.$$INSTANCE;

            /* JADX INFO: renamed from: com.vungle.ads.internal.downloader.a$b$b$a, reason: collision with other inner class name */
            public static final class C0707a {
                private static int STARTED;
                static final /* synthetic */ C0707a $$INSTANCE = new C0707a();
                private static int IN_PROGRESS = 1;
                private static int PAUSED = 2;
                private static int CANCELLED = 3;
                private static int DONE = 4;
                private static int LOST_CONNECTION = 5;
                private static int STATE_CHANGED = 6;
                private static int ERROR = 7;

                private C0707a() {
                }

                public final int getCANCELLED() {
                    return CANCELLED;
                }

                public final int getDONE() {
                    return DONE;
                }

                public final int getERROR() {
                    return ERROR;
                }

                public final int getIN_PROGRESS() {
                    return IN_PROGRESS;
                }

                public final int getLOST_CONNECTION() {
                    return LOST_CONNECTION;
                }

                public final int getPAUSED() {
                    return PAUSED;
                }

                public final int getSTARTED() {
                    return STARTED;
                }

                public final int getSTATE_CHANGED() {
                    return STATE_CHANGED;
                }

                public final void setCANCELLED(int i11) {
                    CANCELLED = i11;
                }

                public final void setDONE(int i11) {
                    DONE = i11;
                }

                public final void setERROR(int i11) {
                    ERROR = i11;
                }

                public final void setIN_PROGRESS(int i11) {
                    IN_PROGRESS = i11;
                }

                public final void setLOST_CONNECTION(int i11) {
                    LOST_CONNECTION = i11;
                }

                public final void setPAUSED(int i11) {
                    PAUSED = i11;
                }

                public final void setSTARTED(int i11) {
                    STARTED = i11;
                }

                public final void setSTATE_CHANGED(int i11) {
                    STATE_CHANGED = i11;
                }
            }
        }

        @InterfaceC0706b
        public static /* synthetic */ void getStatus$annotations() {
        }

        public final int getProgressPercent() {
            return this.progressPercent;
        }

        public final long getSizeBytes() {
            return this.sizeBytes;
        }

        public final long getStartBytes() {
            return this.startBytes;
        }

        public final int getStatus() {
            return this.status;
        }

        public final long getTimestampDownloadStart() {
            return this.timestampDownloadStart;
        }

        public final void setProgressPercent(int i11) {
            this.progressPercent = i11;
        }

        public final void setSizeBytes(long j11) {
            this.sizeBytes = j11;
        }

        public final void setStartBytes(long j11) {
            this.startBytes = j11;
        }

        public final void setStatus(int i11) {
            this.status = i11;
        }

        public final void setTimestampDownloadStart(long j11) {
            this.timestampDownloadStart = j11;
        }
    }

    void onError(C0702a c0702a, DownloadRequest downloadRequest);

    void onSuccess(File file, DownloadRequest downloadRequest);
}
