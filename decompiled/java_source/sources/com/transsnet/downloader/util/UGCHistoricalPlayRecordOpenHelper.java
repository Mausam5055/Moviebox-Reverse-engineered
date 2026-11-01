package com.transsnet.downloader.util;

import com.therouter.TheRouter;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.ugcvideodetail.api.UGCVideoType;
import com.transsnet.downloader.manager.DownloadEsHelper;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
public final class UGCHistoricalPlayRecordOpenHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final UGCHistoricalPlayRecordOpenHelper f59906a = new UGCHistoricalPlayRecordOpenHelper();

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f59907a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Integer f59908b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f59909c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f59910d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f59911e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final String f59912f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final String f59913g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final String f59914h;

        public a(String str, Integer num, String str2, String str3, String str4, String str5, String str6, String str7) {
            this.f59907a = str;
            this.f59908b = num;
            this.f59909c = str2;
            this.f59910d = str3;
            this.f59911e = str4;
            this.f59912f = str5;
            this.f59913g = str6;
            this.f59914h = str7;
        }

        public final String a() {
            return this.f59907a;
        }

        public final Integer b() {
            return this.f59908b;
        }

        public final String c() {
            return this.f59909c;
        }

        public final String d() {
            return this.f59910d;
        }

        public final String e() {
            return this.f59911e;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f59907a, aVar.f59907a) && Intrinsics.c(this.f59908b, aVar.f59908b) && Intrinsics.c(this.f59909c, aVar.f59909c) && Intrinsics.c(this.f59910d, aVar.f59910d) && Intrinsics.c(this.f59911e, aVar.f59911e) && Intrinsics.c(this.f59912f, aVar.f59912f) && Intrinsics.c(this.f59913g, aVar.f59913g) && Intrinsics.c(this.f59914h, aVar.f59914h);
        }

        public final String f() {
            return this.f59912f;
        }

        public final String g() {
            return this.f59913g;
        }

        public final String h() {
            return this.f59914h;
        }

        public int hashCode() {
            String str = this.f59907a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            Integer num = this.f59908b;
            int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
            String str2 = this.f59909c;
            int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.f59910d;
            int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.f59911e;
            int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.f59912f;
            int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.f59913g;
            int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
            String str7 = this.f59914h;
            return iHashCode7 + (str7 != null ? str7.hashCode() : 0);
        }

        public String toString() {
            return "VideoParams(subjectId=" + this.f59907a + ", subjectType=" + this.f59908b + ", queryVideoId=" + this.f59909c + ", ugcVideoId=" + this.f59910d + ", collectionId=" + this.f59911e + ", ugcVideoType=" + this.f59912f + ", ops=" + this.f59913g + ", videoStyle=" + this.f59914h + ")";
        }
    }

    private UGCHistoricalPlayRecordOpenHelper() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:40:0x013e  */
    /* JADX WARN: Code duplicated, block: B:50:0x0158  */
    /* JADX WARN: Code duplicated, block: B:52:0x0164  */
    /* JADX WARN: Code duplicated, block: B:55:0x016b  */
    /* JADX WARN: Code duplicated, block: B:58:0x0228 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0029  */
    public final Object f(String str, Integer num, String str2, String str3, String str4, String str5, String str6, String str7, String str8, Continuation continuation) throws Throwable {
        UGCHistoricalPlayRecordOpenHelper$handleNavigation$1 uGCHistoricalPlayRecordOpenHelper$handleNavigation$1;
        String str9;
        String str10;
        Integer num2;
        String str11;
        String str12;
        String str13;
        String str14;
        String str15;
        DownloadBean downloadBean;
        DownloadBean downloadBean2;
        boolean zC;
        String str16 = str4;
        if (continuation instanceof UGCHistoricalPlayRecordOpenHelper$handleNavigation$1) {
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1 = (UGCHistoricalPlayRecordOpenHelper$handleNavigation$1) continuation;
            int i11 = uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.label = i11 - Integer.MIN_VALUE;
            } else {
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1 = new UGCHistoricalPlayRecordOpenHelper$handleNavigation$1(this, continuation);
            }
        } else {
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1 = new UGCHistoricalPlayRecordOpenHelper$handleNavigation$1(this, continuation);
        }
        Object objR = uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.label;
        if (i12 == 0) {
            ResultKt.b(objR);
            if (str == null || str.length() == 0) {
                if (str2 != null) {
                    DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$0 = str;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$1 = num;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$2 = str2;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$3 = str3;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$4 = str16;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$5 = str5;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$6 = str6;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$7 = str7;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$8 = str8;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.label = 1;
                    objR = downloadEsHelperA.R(str2, uGCHistoricalPlayRecordOpenHelper$handleNavigation$1);
                    if (objR == objF) {
                        return objF;
                    }
                    str9 = str;
                    str10 = str8;
                    num2 = num;
                    str11 = str7;
                    str12 = str2;
                    str13 = str6;
                    str14 = str3;
                    str15 = str5;
                    downloadBean2 = (DownloadBean) objR;
                    downloadBean = downloadBean2;
                }
                if (str9 != null) {
                    zC = Intrinsics.c(str15, UGCVideoType.SHORT_TV.getValue());
                } else {
                    zC = Intrinsics.c(str15, UGCVideoType.SHORT_TV.getValue());
                }
                if (downloadBean == null) {
                }
                lg.a.C0828a.f(lg.a.f68839a, "UGCVideoOpen", StringsKt.n("\n                " + str10 + " gotoUGCVideoDetail isDownloaded:" + z + ",isShortTV" + zC + "\n                subjectId:" + str9 + ",subjectType:" + num2 + ",queryVideoId:" + str12 + ",\n                ugcVideoId:" + str14 + ",collectionId:" + str16 + ",ugcVideoType:" + str15 + ",\n                ops:" + str13 + ", videoStyle:" + str11 + "\n            "), false, 4, null);
                a2 a2VarC = y0.c();
                UGCHistoricalPlayRecordOpenHelper$handleNavigation$2 uGCHistoricalPlayRecordOpenHelper$handleNavigation$2 = new UGCHistoricalPlayRecordOpenHelper$handleNavigation$2(str11, z, downloadBean, str14, str12, str9, str16, str13, str15, zC, null);
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$0 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$1 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$2 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$3 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$4 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$5 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$6 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$7 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$8 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.label = 3;
                objR = kotlinx.coroutines.i.g(a2VarC, uGCHistoricalPlayRecordOpenHelper$handleNavigation$2, uGCHistoricalPlayRecordOpenHelper$handleNavigation$1);
                if (objR == objF) {
                    return objF;
                }
            } else {
                if (str2 != null) {
                    DownloadEsHelper downloadEsHelperA2 = DownloadEsHelper.f59419m.a();
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$0 = str;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$1 = num;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$2 = str2;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$3 = str3;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$4 = str16;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$5 = str5;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$6 = str6;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$7 = str7;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$8 = str8;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.label = 2;
                    objR = downloadEsHelperA2.p(str2, uGCHistoricalPlayRecordOpenHelper$handleNavigation$1);
                    if (objR == objF) {
                        return objF;
                    }
                    str9 = str;
                    str10 = str8;
                    num2 = num;
                    str11 = str7;
                    str12 = str2;
                    str13 = str6;
                    str14 = str3;
                    str15 = str5;
                    downloadBean2 = (DownloadBean) objR;
                    downloadBean = downloadBean2;
                }
                if (str9 != null) {
                    zC = Intrinsics.c(str15, UGCVideoType.SHORT_TV.getValue());
                } else {
                    zC = Intrinsics.c(str15, UGCVideoType.SHORT_TV.getValue());
                }
                if (downloadBean == null) {
                }
                lg.a.C0828a.f(lg.a.f68839a, "UGCVideoOpen", StringsKt.n("\n                " + str10 + " gotoUGCVideoDetail isDownloaded:" + z + ",isShortTV" + zC + "\n                subjectId:" + str9 + ",subjectType:" + num2 + ",queryVideoId:" + str12 + ",\n                ugcVideoId:" + str14 + ",collectionId:" + str16 + ",ugcVideoType:" + str15 + ",\n                ops:" + str13 + ", videoStyle:" + str11 + "\n            "), false, 4, null);
                a2 a2VarC2 = y0.c();
                UGCHistoricalPlayRecordOpenHelper$handleNavigation$2 uGCHistoricalPlayRecordOpenHelper$handleNavigation$3 = new UGCHistoricalPlayRecordOpenHelper$handleNavigation$2(str11, z, downloadBean, str14, str12, str9, str16, str13, str15, zC, null);
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$0 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$1 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$2 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$3 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$4 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$5 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$6 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$7 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$8 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.label = 3;
                objR = kotlinx.coroutines.i.g(a2VarC2, uGCHistoricalPlayRecordOpenHelper$handleNavigation$3, uGCHistoricalPlayRecordOpenHelper$handleNavigation$1);
                if (objR == objF) {
                    return objF;
                }
            }
            downloadBean = null;
            str9 = str;
            str10 = str8;
            num2 = num;
            str11 = str7;
            str12 = str2;
            str13 = str6;
            str14 = str3;
            str15 = str5;
            if (str9 != null) {
                zC = Intrinsics.c(str15, UGCVideoType.SHORT_TV.getValue());
            } else {
                zC = Intrinsics.c(str15, UGCVideoType.SHORT_TV.getValue());
            }
            if (downloadBean == null) {
            }
            lg.a.C0828a.f(lg.a.f68839a, "UGCVideoOpen", StringsKt.n("\n                " + str10 + " gotoUGCVideoDetail isDownloaded:" + z + ",isShortTV" + zC + "\n                subjectId:" + str9 + ",subjectType:" + num2 + ",queryVideoId:" + str12 + ",\n                ugcVideoId:" + str14 + ",collectionId:" + str16 + ",ugcVideoType:" + str15 + ",\n                ops:" + str13 + ", videoStyle:" + str11 + "\n            "), false, 4, null);
            a2 a2VarC3 = y0.c();
            UGCHistoricalPlayRecordOpenHelper$handleNavigation$2 uGCHistoricalPlayRecordOpenHelper$handleNavigation$4 = new UGCHistoricalPlayRecordOpenHelper$handleNavigation$2(str11, z, downloadBean, str14, str12, str9, str16, str13, str15, zC, null);
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$0 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$1 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$2 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$3 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$4 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$5 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$6 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$7 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$8 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.label = 3;
            objR = kotlinx.coroutines.i.g(a2VarC3, uGCHistoricalPlayRecordOpenHelper$handleNavigation$4, uGCHistoricalPlayRecordOpenHelper$handleNavigation$1);
            if (objR == objF) {
                return objF;
            }
        } else if (i12 == 1) {
            str10 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$8;
            str11 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$7;
            str13 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$6;
            str15 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$5;
            str16 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$4;
            str14 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$3;
            str12 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$2;
            num2 = (Integer) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$1;
            str9 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$0;
            ResultKt.b(objR);
            downloadBean2 = (DownloadBean) objR;
            downloadBean = downloadBean2;
            if (str9 != null) {
                zC = Intrinsics.c(str15, UGCVideoType.SHORT_TV.getValue());
            } else {
                zC = Intrinsics.c(str15, UGCVideoType.SHORT_TV.getValue());
            }
            if (downloadBean == null) {
            }
            lg.a.C0828a.f(lg.a.f68839a, "UGCVideoOpen", StringsKt.n("\n                " + str10 + " gotoUGCVideoDetail isDownloaded:" + z + ",isShortTV" + zC + "\n                subjectId:" + str9 + ",subjectType:" + num2 + ",queryVideoId:" + str12 + ",\n                ugcVideoId:" + str14 + ",collectionId:" + str16 + ",ugcVideoType:" + str15 + ",\n                ops:" + str13 + ", videoStyle:" + str11 + "\n            "), false, 4, null);
            a2 a2VarC4 = y0.c();
            UGCHistoricalPlayRecordOpenHelper$handleNavigation$2 uGCHistoricalPlayRecordOpenHelper$handleNavigation$5 = new UGCHistoricalPlayRecordOpenHelper$handleNavigation$2(str11, z, downloadBean, str14, str12, str9, str16, str13, str15, zC, null);
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$0 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$1 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$2 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$3 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$4 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$5 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$6 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$7 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$8 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.label = 3;
            objR = kotlinx.coroutines.i.g(a2VarC4, uGCHistoricalPlayRecordOpenHelper$handleNavigation$5, uGCHistoricalPlayRecordOpenHelper$handleNavigation$1);
            if (objR == objF) {
                return objF;
            }
        } else if (i12 == 2) {
            str10 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$8;
            str11 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$7;
            str13 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$6;
            str15 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$5;
            str16 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$4;
            str14 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$3;
            str12 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$2;
            num2 = (Integer) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$1;
            str9 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$0;
            ResultKt.b(objR);
            downloadBean2 = (DownloadBean) objR;
            downloadBean = downloadBean2;
            if (str9 != null || str9.length() == 0) {
                zC = Intrinsics.c(str15, UGCVideoType.SHORT_TV.getValue());
            } else {
                zC = num2 != null && num2.intValue() == SubjectType.SHORT_TV.getValue();
            }
            boolean z10 = downloadBean == null && downloadBean.isCompleted();
            lg.a.C0828a.f(lg.a.f68839a, "UGCVideoOpen", StringsKt.n("\n                " + str10 + " gotoUGCVideoDetail isDownloaded:" + z10 + ",isShortTV" + zC + "\n                subjectId:" + str9 + ",subjectType:" + num2 + ",queryVideoId:" + str12 + ",\n                ugcVideoId:" + str14 + ",collectionId:" + str16 + ",ugcVideoType:" + str15 + ",\n                ops:" + str13 + ", videoStyle:" + str11 + "\n            "), false, 4, null);
            a2 a2VarC5 = y0.c();
            UGCHistoricalPlayRecordOpenHelper$handleNavigation$2 uGCHistoricalPlayRecordOpenHelper$handleNavigation$6 = new UGCHistoricalPlayRecordOpenHelper$handleNavigation$2(str11, z10, downloadBean, str14, str12, str9, str16, str13, str15, zC, null);
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$0 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$1 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$2 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$3 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$4 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$5 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$6 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$7 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$8 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.label = 3;
            objR = kotlinx.coroutines.i.g(a2VarC5, uGCHistoricalPlayRecordOpenHelper$handleNavigation$6, uGCHistoricalPlayRecordOpenHelper$handleNavigation$1);
            if (objR == objF) {
                return objF;
            }
        } else {
            if (i12 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objR);
        }
        return objR;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g(String str, String str2, String str3, DownloadBean downloadBean) {
        ak.k.p(TheRouter.c("/ugc_video/local_detail").K("id", str).K("resource_id", downloadBean.getResourceId()).K("collection_id", str2).K("ops", str3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(String str, String str2, String str3, String str4, String str5, String str6) {
        ak.k.p(TheRouter.c("/ugc_video/detail").K("id", str2).K("subject_id", str).K("collection_id", str3).K("ugcCategory", str5).K("videoStyle", str6).K("ops", str4));
    }

    public final Object d(UGCVideoDetailPlayBean uGCVideoDetailPlayBean, VideoDetailPlayBean videoDetailPlayBean, String str, Continuation continuation) {
        Object objG = kotlinx.coroutines.i.g(y0.b(), new UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4(uGCVideoDetailPlayBean, videoDetailPlayBean, str, null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f67061a;
    }

    public final Object e(Object obj, String str, Continuation continuation) {
        Object objG = kotlinx.coroutines.i.g(y0.b(), new UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2(obj, str, null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f67061a;
    }
}
