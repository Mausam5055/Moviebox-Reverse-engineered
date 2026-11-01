package com.transsnet.downloader.ugc.adapter;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class c {

    public static final class a extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final DownloadBean f59614a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(DownloadBean bean) {
            super(null);
            Intrinsics.h(bean, "bean");
            this.f59614a = bean;
        }

        public final DownloadBean a() {
            return this.f59614a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && Intrinsics.c(this.f59614a, ((a) obj).f59614a);
        }

        public int hashCode() {
            return this.f59614a.hashCode();
        }

        public String toString() {
            return "AllEpBtnItem(bean=" + this.f59614a + ")";
        }
    }

    public static final class b extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final DownloadBean f59615a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DownloadBean bean) {
            super(null);
            Intrinsics.h(bean, "bean");
            this.f59615a = bean;
        }

        public final b a(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
            return new b(bean);
        }

        public final DownloadBean b() {
            return this.f59615a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && Intrinsics.c(this.f59615a, ((b) obj).f59615a);
        }

        public int hashCode() {
            return this.f59615a.hashCode();
        }

        public String toString() {
            return "DownloadedItem(bean=" + this.f59615a + ")";
        }
    }

    /* JADX INFO: renamed from: com.transsnet.downloader.ugc.adapter.c$c, reason: collision with other inner class name */
    public static final class C0695c extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final DownloadBean f59616a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0695c(DownloadBean bean) {
            super(null);
            Intrinsics.h(bean, "bean");
            this.f59616a = bean;
        }

        public final C0695c a(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
            return new C0695c(bean);
        }

        public final DownloadBean b() {
            return this.f59616a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof C0695c) && Intrinsics.c(this.f59616a, ((C0695c) obj).f59616a);
        }

        public int hashCode() {
            return this.f59616a.hashCode();
        }

        public String toString() {
            return "DownloadingItem(bean=" + this.f59616a + ")";
        }
    }

    public static final class d extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final d f59617a = new d();

        private d() {
            super(null);
        }
    }

    public static final class e extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final UGCVideo f59618a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(UGCVideo video) {
            super(null);
            Intrinsics.h(video, "video");
            this.f59618a = video;
        }

        public final UGCVideo a() {
            return this.f59618a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof e) && Intrinsics.c(this.f59618a, ((e) obj).f59618a);
        }

        public int hashCode() {
            return this.f59618a.hashCode();
        }

        public String toString() {
            return "ForYouItem(video=" + this.f59618a + ")";
        }
    }

    public static final class f extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final f f59619a = new f();

        private f() {
            super(null);
        }
    }

    private c() {
    }

    public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
