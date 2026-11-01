package com.transsion.postdetail.layer.local;

import android.os.Bundle;
import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.global.TnPlayerType;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.web.api.WebConstants;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c0 {

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final a f48992g0 = new a(null);
    private String A;
    private String B;
    private String C;
    private String D;
    private String E;
    private String F;
    private String H;
    private String I;
    private DownloadBean J;
    private String K;
    private int L;
    private boolean M;
    private int N;
    private int O;
    private String R;
    private UGCVideo U;
    private String V;
    private String W;
    private String X;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.transsion.player.orplayer.g f48993a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private boolean f48994a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private TnPlayerType f48996b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f48997c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private boolean f48998c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f48999d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private boolean f49000d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f49001e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private yj.c f49002e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f49003f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private boolean f49004f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f49005g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f49006h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f49007i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Double f49008j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Double f49009k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f49010l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f49011m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f49012n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f49013o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f49014p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f49015q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f49016r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f49018t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f49019u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f49020v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f49021w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f49022x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private long f49023y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Integer f49024z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f48995b = "long_video_play";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f49017s = true;
    private int G = -1;
    private int P = -1;
    private int Q = -1;
    private String S = "local_video_detail";
    private String T = "long_video_play";
    private Map Y = new LinkedHashMap();
    private final List Z = new ArrayList();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static /* synthetic */ void c(c0 c0Var, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        c0Var.b(z10);
    }

    private final yj.c f() {
        if (this.f49002e0 == null) {
            this.f49002e0 = (yj.c) yj.a.f79022a.a(yj.c.class);
        }
        return this.f49002e0;
    }

    private final void y(boolean z10) {
        this.f48997c = 0L;
        this.f48999d = 0L;
        this.f49001e = 0L;
        this.f49003f = 0L;
        this.f49005g = 0L;
        this.f49006h = 0;
        this.f49011m = 0L;
        this.f49012n = 0L;
        this.f49020v = 0L;
        this.f49021w = 0L;
        this.f49022x = 0;
        this.f49013o = 0L;
        this.f49014p = 0L;
        this.f49015q = 0L;
        this.f49007i = 0;
        this.f49016r = false;
        this.f49024z = null;
        this.A = null;
        this.L = 0;
        this.B = "";
        if (z10) {
            return;
        }
        this.f49010l = 0L;
        this.f49023y = 0L;
        this.f48996b0 = null;
        this.f48998c0 = false;
        this.f49000d0 = false;
        this.f49019u = false;
    }

    public final void A(DownloadBean downloadBean, String str) {
        this.K = str;
        this.J = downloadBean;
        if (downloadBean == null || !downloadBean.isInnerRes()) {
            this.H = "2";
            this.I = downloadBean != null ? downloadBean.getPath() : null;
        } else if (downloadBean == null || downloadBean.getStatus() != 5) {
            this.H = "1";
            this.I = downloadBean != null ? downloadBean.getUrl() : null;
        } else {
            this.H = "0";
            this.I = downloadBean.getPath();
        }
        lg.a.C0828a.f(lg.a.f68839a, this.f48995b, "setData", false, 4, null);
    }

    public final void B(int i11) {
        this.Q = i11;
    }

    public final void C(int i11) {
        this.P = i11;
    }

    public final void D(boolean z10) {
        this.f49018t = z10;
    }

    public final void E(String str) {
        Intrinsics.h(str, "<set-?>");
        this.T = str;
    }

    public final void F(boolean z10) {
        this.f48994a0 = z10;
    }

    public final void G(boolean z10) {
        this.f49004f0 = z10;
    }

    public final void H(int i11, String str) {
        String str2;
        if (i11 == 1 || this.L != 1 || (str2 = this.B) == null || str2.length() <= 0) {
            this.L = i11;
            this.B = str;
        }
    }

    public final void I(com.transsion.player.orplayer.g gVar) {
        this.f48993a = gVar;
    }

    public final void J(String str) {
        Intrinsics.h(str, "<set-?>");
        this.S = str;
    }

    public final void K(String str) {
        this.H = str;
    }

    public final void L(String str) {
        this.R = str;
    }

    public final void M(boolean z10) {
        this.f49000d0 = z10;
    }

    public final void N(String str) {
        this.V = str;
    }

    public final void O(String str) {
        this.X = str;
    }

    public final void P(String str) {
        this.W = str;
    }

    public final void Q(UGCVideo uGCVideo) {
        this.U = uGCVideo;
    }

    public final void a() {
        this.f48999d = System.currentTimeMillis();
        lg.a.C0828a.f(lg.a.f68839a, this.f48995b, "addSurface", false, 4, null);
    }

    /* JADX WARN: Code duplicated, block: B:162:0x02e2  */
    /* JADX WARN: Code duplicated, block: B:164:0x02ed  */
    /* JADX WARN: Code duplicated, block: B:167:0x02fa  */
    /* JADX WARN: Code duplicated, block: B:170:0x0307  */
    /* JADX WARN: Code duplicated, block: B:173:0x0318  */
    /* JADX WARN: Code duplicated, block: B:188:0x0379  */
    /* JADX WARN: Code duplicated, block: B:190:0x0388  */
    /* JADX WARN: Code duplicated, block: B:192:0x038e  */
    /* JADX WARN: Code duplicated, block: B:193:0x0394  */
    /* JADX WARN: Code duplicated, block: B:196:0x039e  */
    /* JADX WARN: Code duplicated, block: B:198:0x03a4  */
    /* JADX WARN: Code duplicated, block: B:199:0x03aa  */
    /* JADX WARN: Code duplicated, block: B:202:0x03d7  */
    /* JADX WARN: Code duplicated, block: B:205:0x0439  */
    /* JADX WARN: Code duplicated, block: B:206:0x043c  */
    /* JADX WARN: Code duplicated, block: B:209:0x045a  */
    /* JADX WARN: Code duplicated, block: B:210:0x045d  */
    /* JADX WARN: Code duplicated, block: B:213:0x0467  */
    /* JADX WARN: Code duplicated, block: B:214:0x046a  */
    /* JADX WARN: Code duplicated, block: B:217:0x0474  */
    /* JADX WARN: Code duplicated, block: B:220:0x0481  */
    /* JADX WARN: Code duplicated, block: B:221:0x0484  */
    /* JADX WARN: Code duplicated, block: B:224:0x048e  */
    /* JADX WARN: Code duplicated, block: B:225:0x0491  */
    /* JADX WARN: Code duplicated, block: B:228:0x04a3  */
    /* JADX WARN: Code duplicated, block: B:231:0x04b1 A[LOOP:1: B:229:0x04ab->B:231:0x04b1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:234:0x04d3  */
    /* JADX WARN: Code duplicated, block: B:237:0x04e4  */
    /* JADX WARN: Code duplicated, block: B:240:0x04f1  */
    /* JADX WARN: Code duplicated, block: B:244:0x0513 A[Catch: all -> 0x0540, TryCatch #0 {all -> 0x0540, blocks: (B:241:0x04f8, B:242:0x050d, B:244:0x0513, B:246:0x051f, B:249:0x0531), top: B:302:0x04f8 }] */
    /* JADX WARN: Code duplicated, block: B:253:0x0544  */
    /* JADX WARN: Code duplicated, block: B:256:0x054e  */
    /* JADX WARN: Code duplicated, block: B:262:0x05a3  */
    /* JADX WARN: Code duplicated, block: B:268:0x05c5  */
    /* JADX WARN: Code duplicated, block: B:275:0x05ea  */
    /* JADX WARN: Code duplicated, block: B:276:0x0608  */
    /* JADX WARN: Code duplicated, block: B:278:0x0612  */
    /* JADX WARN: Code duplicated, block: B:279:0x0617  */
    /* JADX WARN: Code duplicated, block: B:282:0x061c  */
    /* JADX WARN: Code duplicated, block: B:283:0x0621  */
    /* JADX WARN: Code duplicated, block: B:289:0x066e  */
    /* JADX WARN: Code duplicated, block: B:294:0x067c  */
    /* JADX WARN: Code duplicated, block: B:298:0x0687  */
    /* JADX WARN: Code duplicated, block: B:302:0x04f8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:307:0x051f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:308:0x0531 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:309:0x0530 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:311:0x050d A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:275:0x05ea, please report this as an issue */
    public final void b(boolean z10) {
        String postId;
        String subjectId;
        String resourceId;
        String ugcVideoId;
        int epse;
        int epse2;
        int i11;
        int i12;
        long j11;
        Object obj;
        String strValueOf;
        long j12;
        String strValueOf2;
        long j13;
        Object obj2;
        long j14;
        long j15;
        Object obj3;
        Object obj4;
        TnPlayerType tnPlayerType;
        Object obj5;
        Object obj6;
        Map mapA;
        Integer num;
        String str;
        String str2;
        String str3;
        LinkedHashMap linkedHashMap;
        String lan;
        DownloadBean downloadBean;
        boolean z11;
        lg.a.C0828a c0828a;
        DownloadBean downloadBean2;
        String subjectId2;
        DownloadBean downloadBean3;
        String resourceId2;
        DownloadBean downloadBean4;
        String subjectId3;
        DownloadBean downloadBean5;
        String resourceId3;
        yj.c cVarF;
        Long size;
        Long size2;
        String ops;
        String ugcVideoCollectionId;
        String subjectId4;
        UGCVideoBelongToCollection belongToCollection;
        if (this.f48997c == 0 && !this.f49019u) {
            lg.a.C0828a.f(lg.a.f68839a, this.f48995b, " exitPlay, return", false, 4, null);
            return;
        }
        if (!this.f49019u) {
            lg.a.C0828a.v(lg.a.f68839a, this.f48995b, " curVideoIsApp2Background = " + z10, false, 4, null);
            this.f49019u = z10;
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        DownloadBean downloadBean6 = this.J;
        if (downloadBean6 == null || (postId = downloadBean6.getPostId()) == null) {
            postId = "";
        }
        linkedHashMap2.put("post_id", postId);
        DownloadBean downloadBean7 = this.J;
        if (downloadBean7 == null || (subjectId = downloadBean7.getSubjectId()) == null) {
            subjectId = "";
        }
        linkedHashMap2.put("subject_id", subjectId);
        DownloadBean downloadBean8 = this.J;
        if (downloadBean8 == null || (resourceId = downloadBean8.getResourceId()) == null) {
            resourceId = "";
        }
        linkedHashMap2.put("resource_id", resourceId);
        String str4 = this.H;
        if (str4 == null) {
            str4 = "";
        }
        linkedHashMap2.put("play_type", str4);
        String strI = this.K;
        if (strI == null) {
            strI = hj.i.f64505a.i();
        }
        linkedHashMap2.put(WebConstants.PAGE_FROM, strI);
        String str5 = this.I;
        if (str5 == null) {
            str5 = "";
        }
        linkedHashMap2.put("url", str5);
        com.transsion.baselib.helper.d dVar = com.transsion.baselib.helper.d.f43265a;
        linkedHashMap2.put("speed", String.valueOf(dVar.d()));
        linkedHashMap2.put("scale_mode", String.valueOf(dVar.c().getValue()));
        linkedHashMap2.put("lock", this.f48994a0 ? "1" : "0");
        if (ko.l0.f66968a.i()) {
            Double d11 = this.f49008j;
            if (d11 != null && d11.doubleValue() > 0.0d) {
                linkedHashMap2.put("redundancyRate", String.valueOf(this.f49008j));
            }
            Double d12 = this.f49009k;
            if (d12 != null && d12.doubleValue() > 0.0d) {
                linkedHashMap2.put("poolPercentDouble", String.valueOf(this.f49009k));
            }
        }
        UGCVideo uGCVideo = this.U;
        if (uGCVideo == null || (ugcVideoId = uGCVideo.getUgcVideoId()) == null) {
            DownloadBean downloadBean9 = this.J;
            ugcVideoId = downloadBean9 != null ? downloadBean9.getUgcVideoId() : null;
        }
        if (ugcVideoId != null && ugcVideoId.length() != 0) {
            UGCVideo uGCVideo2 = this.U;
            if (uGCVideo2 == null || (belongToCollection = uGCVideo2.getBelongToCollection()) == null || (ugcVideoCollectionId = belongToCollection.getCollectionId()) == null) {
                DownloadBean downloadBean10 = this.J;
                ugcVideoCollectionId = downloadBean10 != null ? downloadBean10.getUgcVideoCollectionId() : null;
                if (ugcVideoCollectionId == null) {
                    ugcVideoCollectionId = "";
                }
            }
            linkedHashMap2.put("content_id", ugcVideoId);
            linkedHashMap2.put("belong_to_collection_id", ugcVideoCollectionId);
            linkedHashMap2.put("content_type", "ugc_video");
            DownloadBean downloadBean11 = this.J;
            if (downloadBean11 == null || (subjectId4 = downloadBean11.getSubjectId()) == null) {
                subjectId4 = "";
            }
            linkedHashMap2.put("refer_subject_id", subjectId4);
        }
        String str6 = this.V;
        if (str6 != null) {
            linkedHashMap2.put("parent_content_id", str6);
        }
        String str7 = this.W;
        if (str7 != null) {
            linkedHashMap2.put("track_id", str7);
        }
        String str8 = this.X;
        if (str8 != null) {
            linkedHashMap2.put("parent_track_id", str8);
        }
        ox.e.a aVar = ox.e.f72197a;
        linkedHashMap2.put("pip_feature", String.valueOf(aVar.b().c()));
        linkedHashMap2.put("pip_system_feature", String.valueOf(aVar.b().g()));
        String str9 = this.R;
        if (str9 != null && str9.length() > 0) {
            String str10 = this.R;
            Intrinsics.e(str10);
            linkedHashMap2.put("resolution", str10);
        }
        if (Intrinsics.c(this.H, "0") || Intrinsics.c(this.H, "1")) {
            DownloadBean downloadBean12 = this.J;
            linkedHashMap2.put("item_type", String.valueOf(downloadBean12 != null ? Integer.valueOf(downloadBean12.getType()) : null));
        }
        DownloadBean downloadBean13 = this.J;
        if (!TextUtils.isEmpty(downloadBean13 != null ? downloadBean13.getOps() : null)) {
            DownloadBean downloadBean14 = this.J;
            if (downloadBean14 == null || (ops = downloadBean14.getOps()) == null) {
                ops = "";
            }
            linkedHashMap2.put("ops", ops);
        }
        DownloadBean downloadBean15 = this.J;
        if (downloadBean15 != null && (size2 = downloadBean15.getSize()) != null) {
            linkedHashMap2.put("resource_size", String.valueOf(size2.longValue()));
        }
        DownloadBean downloadBean16 = this.J;
        if (downloadBean16 != null) {
            long progress = downloadBean16.getProgress();
            if (Intrinsics.c(this.H, "1")) {
                float f11 = progress * 100.0f;
                DownloadBean downloadBean17 = this.J;
                linkedHashMap2.put("downloaded_percent", String.valueOf(f11 / ((downloadBean17 == null || (size = downloadBean17.getSize()) == null) ? 1L : size.longValue())));
            }
        }
        for (Map.Entry entry : this.Y.entrySet()) {
            linkedHashMap2.put("subtitle_use_time_" + ((eu.a) entry.getKey()).b().getType() + "_" + ((eu.a) entry.getKey()).b().getLan(), String.valueOf(((Number) entry.getValue()).longValue()));
        }
        DownloadBean downloadBean18 = this.J;
        if (downloadBean18 != null && downloadBean18.isSeries()) {
            DownloadBean downloadBean19 = this.J;
            if ((downloadBean19 != null ? downloadBean19.getEp() : 0) > 0) {
                DownloadBean downloadBean20 = this.J;
                epse = downloadBean20 != null ? downloadBean20.getSe() : 0;
                DownloadBean downloadBean21 = this.J;
                if (downloadBean21 != null) {
                    epse2 = downloadBean21.getEp();
                }
            } else {
                DownloadBean downloadBean22 = this.J;
                epse = downloadBean22 != null ? downloadBean22.getEpse() / 100 : 0;
                DownloadBean downloadBean23 = this.J;
                if (downloadBean23 != null) {
                    epse2 = downloadBean23.getEpse() % 100;
                }
            }
            if (epse > 0) {
                linkedHashMap2.put("seasons", String.valueOf(epse));
            }
            if (epse2 > 0) {
                linkedHashMap2.put("episode", String.valueOf(epse2));
            }
            i11 = this.P;
            if (i11 >= 0) {
                linkedHashMap2.put(RequestParameters.POSITION, String.valueOf(i11));
            }
            i12 = this.Q;
            if (i12 >= 0) {
                linkedHashMap2.put("parent_position", String.valueOf(i12));
            }
            if (this.f49020v != 0) {
                this.f49021w += System.currentTimeMillis() - this.f49020v;
                this.f49020v = 0L;
            }
            if (this.f49001e <= 0 || this.f49019u) {
                linkedHashMap2.put("is_start", "1");
                j11 = this.f48997c;
                obj = "1";
                if (j11 > 0) {
                    j15 = this.f49001e;
                    if (j15 > 0) {
                        strValueOf = String.valueOf(j15 - j11);
                    } else {
                        strValueOf = "0";
                    }
                } else {
                    strValueOf = "0";
                }
                linkedHashMap2.put("delay_v", strValueOf);
                j12 = this.f48999d;
                if (j12 > 0) {
                    j14 = this.f49001e;
                    if (j14 > 0) {
                        strValueOf2 = String.valueOf(j14 - j12);
                    } else {
                        strValueOf2 = "0";
                    }
                } else {
                    strValueOf2 = "0";
                }
                linkedHashMap2.put("delay", strValueOf2);
                linkedHashMap2.put("buffer_time", String.valueOf(this.f49003f));
                linkedHashMap2.put("buffer_count", String.valueOf(this.f49006h));
                linkedHashMap2.put("seek_count", String.valueOf(this.f49007i));
                j13 = this.f49023y;
                if (j13 > 0) {
                    linkedHashMap2.put("play_complete", String.valueOf((this.f49010l / j13) * 100.0f));
                    linkedHashMap2.put("total_duration", String.valueOf(this.f49023y));
                }
                linkedHashMap2.put("play_duration", String.valueOf(this.f49012n));
                linkedHashMap2.put("play_duration_middlepage", String.valueOf(this.f49014p));
                linkedHashMap2.put("play_duration_fullscreen", String.valueOf(this.f49013o));
                linkedHashMap2.put("play_duration_pip", String.valueOf(this.f49015q));
                linkedHashMap2.put("pause_duration", String.valueOf(this.f49021w));
                linkedHashMap2.put("pause_count", String.valueOf(this.f49022x));
                if (this.f49016r) {
                    obj2 = obj;
                } else {
                    obj2 = "0";
                }
                linkedHashMap2.put(CampaignEx.JSON_NATIVE_VIDEO_COMPLETE, obj2);
                linkedHashMap2.put("video_bitrate", String.valueOf(this.N));
                linkedHashMap2.put("audio_bitrate", String.valueOf(this.O));
            } else {
                linkedHashMap2.put("is_start", "0");
                linkedHashMap2.put("delay_v", this.f48997c > 0 ? String.valueOf(System.currentTimeMillis() - this.f48997c) : "0");
                linkedHashMap2.put("delay", this.f48999d > 0 ? String.valueOf(System.currentTimeMillis() - this.f48999d) : "0");
                linkedHashMap2.put("not_play_error_msg", String.valueOf(this.B));
                obj = "1";
            }
            if (z10) {
                obj3 = obj;
            } else {
                obj3 = "0";
            }
            linkedHashMap2.put("app_to_background", obj3);
            if (this.M) {
                obj4 = obj;
            } else {
                obj4 = "0";
            }
            linkedHashMap2.put("is_replay", obj4);
            tnPlayerType = this.f48996b0;
            if (tnPlayerType != null) {
                linkedHashMap2.put("error_player", String.valueOf(tnPlayerType));
            }
            if (this.f48998c0) {
                obj5 = obj;
            } else {
                obj5 = "0";
            }
            linkedHashMap2.put("aliyun_2_sfotdecoder", obj5);
            if (this.f49000d0) {
                obj6 = obj;
            } else {
                obj6 = "0";
            }
            linkedHashMap2.put("timeout_replay", obj6);
            mapA = com.transsnet.downloader.util.i.f59939a.a();
            if (!mapA.isEmpty()) {
                for (Map.Entry entry2 : mapA.entrySet()) {
                    linkedHashMap2.put((String) entry2.getKey(), String.valueOf(((Number) entry2.getValue()).longValue()));
                }
            }
            num = this.f49024z;
            if (num != null) {
                linkedHashMap2.put("player_error_code", String.valueOf(num.intValue()));
            }
            str = this.A;
            if (str != null) {
                linkedHashMap2.put("player_error_msg", str);
            }
            if (this.Z.isEmpty()) {
                linkedHashMap2.put("subtitle_downloaded", "0");
            } else {
                try {
                    linkedHashMap = new LinkedHashMap();
                    List list = this.Z;
                    ArrayList<eu.a> arrayList = new ArrayList();
                    arrayList.addAll(list);
                    for (eu.a aVar2 : arrayList) {
                        if (aVar2.d()) {
                            lan = aVar2.b().getLan();
                            Intrinsics.e(lan);
                            if (linkedHashMap.containsKey(lan)) {
                                String lan2 = aVar2.b().getLan();
                                Intrinsics.e(lan2);
                                linkedHashMap.put(lan2, "");
                            }
                        }
                    }
                } catch (Throwable unused) {
                }
                str2 = this.E;
                if (str2 == null) {
                    str2 = "";
                }
                linkedHashMap2.put("subtitle_type", str2);
                str3 = this.F;
                if (str3 == null) {
                    str3 = "";
                }
                linkedHashMap2.put("subtitle_lan", str3);
                linkedHashMap2.put("subtitle_from", String.valueOf(this.G));
                lg.a.C0828a.f(lg.a.f68839a, "ORSubtitle", "LanName= " + this.E + ",Lan = " + this.F + ", From = " + this.G, false, 4, null);
            }
            if (TextUtils.isEmpty(this.C) || !TextUtils.isEmpty(this.D)) {
                linkedHashMap2.put("subtitle_bilingual", CollectionsKt.q(this.C, this.D).toString());
            }
            downloadBean = this.J;
            if (downloadBean == null && downloadBean.getSubjectType() == 6) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (!z11 && (cVarF = f()) != null) {
                cVarF.b(this.f49012n);
            }
            c0828a = lg.a.f68839a;
            lg.a.C0828a.f(c0828a, this.f48995b, "video exit， report and reset data", false, 4, null);
            if (this.f49024z != null) {
                c0828a.i(this.f48995b, "error " + hj.i.f64505a.o(linkedHashMap2), true);
            } else {
                String str11 = this.f48995b;
                Object obj7 = linkedHashMap2.get("is_start");
                downloadBean2 = this.J;
                if (downloadBean2 != null) {
                    subjectId2 = downloadBean2.getSubjectId();
                } else {
                    subjectId2 = null;
                }
                downloadBean3 = this.J;
                if (downloadBean3 != null) {
                    resourceId2 = downloadBean3.getResourceId();
                } else {
                    resourceId2 = null;
                }
                c0828a.i(str11, "is_start=" + obj7 + " subject_id=" + subjectId2 + " requestId=" + resourceId2 + " urlOrPath=" + this.I, true);
            }
            hj.i.f64505a.H(this.S, this.T, this.f49012n, linkedHashMap2);
            Bundle bundle = new Bundle();
            downloadBean4 = this.J;
            if (downloadBean4 != null || (subjectId3 = downloadBean4.getSubjectId()) == null) {
                subjectId3 = "";
            }
            bundle.putString("subject_id", subjectId3);
            downloadBean5 = this.J;
            if (downloadBean5 != null || (resourceId3 = downloadBean5.getResourceId()) == null) {
                resourceId3 = "";
            }
            bundle.putString("resource_id", resourceId3);
            String str12 = this.H;
            bundle.putString("play_type", str12 != null ? str12 : "");
            bundle.putBoolean("is_music_liked_fragment", this.f49004f0);
            com.transsion.baselib.report.e.f43344a.l(this.T, bundle, com.transsion.baselib.report.l.f43359a.o());
            y(z10);
        }
        epse = 0;
        epse2 = 0;
        if (epse > 0) {
            linkedHashMap2.put("seasons", String.valueOf(epse));
        }
        if (epse2 > 0) {
            linkedHashMap2.put("episode", String.valueOf(epse2));
        }
        i11 = this.P;
        if (i11 >= 0) {
            linkedHashMap2.put(RequestParameters.POSITION, String.valueOf(i11));
        }
        i12 = this.Q;
        if (i12 >= 0) {
            linkedHashMap2.put("parent_position", String.valueOf(i12));
        }
        if (this.f49020v != 0) {
            this.f49021w += System.currentTimeMillis() - this.f49020v;
            this.f49020v = 0L;
        }
        if (this.f49001e <= 0) {
            linkedHashMap2.put("is_start", "1");
            j11 = this.f48997c;
            obj = "1";
            if (j11 > 0) {
                j15 = this.f49001e;
                if (j15 > 0) {
                    strValueOf = String.valueOf(j15 - j11);
                } else {
                    strValueOf = "0";
                }
            } else {
                strValueOf = "0";
            }
            linkedHashMap2.put("delay_v", strValueOf);
            j12 = this.f48999d;
            if (j12 > 0) {
                j14 = this.f49001e;
                if (j14 > 0) {
                    strValueOf2 = String.valueOf(j14 - j12);
                } else {
                    strValueOf2 = "0";
                }
            } else {
                strValueOf2 = "0";
            }
            linkedHashMap2.put("delay", strValueOf2);
            linkedHashMap2.put("buffer_time", String.valueOf(this.f49003f));
            linkedHashMap2.put("buffer_count", String.valueOf(this.f49006h));
            linkedHashMap2.put("seek_count", String.valueOf(this.f49007i));
            j13 = this.f49023y;
            if (j13 > 0) {
                linkedHashMap2.put("play_complete", String.valueOf((this.f49010l / j13) * 100.0f));
                linkedHashMap2.put("total_duration", String.valueOf(this.f49023y));
            }
            linkedHashMap2.put("play_duration", String.valueOf(this.f49012n));
            linkedHashMap2.put("play_duration_middlepage", String.valueOf(this.f49014p));
            linkedHashMap2.put("play_duration_fullscreen", String.valueOf(this.f49013o));
            linkedHashMap2.put("play_duration_pip", String.valueOf(this.f49015q));
            linkedHashMap2.put("pause_duration", String.valueOf(this.f49021w));
            linkedHashMap2.put("pause_count", String.valueOf(this.f49022x));
            if (this.f49016r) {
                obj2 = obj;
            } else {
                obj2 = "0";
            }
            linkedHashMap2.put(CampaignEx.JSON_NATIVE_VIDEO_COMPLETE, obj2);
            linkedHashMap2.put("video_bitrate", String.valueOf(this.N));
            linkedHashMap2.put("audio_bitrate", String.valueOf(this.O));
        } else {
            linkedHashMap2.put("is_start", "1");
            j11 = this.f48997c;
            obj = "1";
            if (j11 > 0) {
                j15 = this.f49001e;
                if (j15 > 0) {
                    strValueOf = String.valueOf(j15 - j11);
                } else {
                    strValueOf = "0";
                }
            } else {
                strValueOf = "0";
            }
            linkedHashMap2.put("delay_v", strValueOf);
            j12 = this.f48999d;
            if (j12 > 0) {
                j14 = this.f49001e;
                if (j14 > 0) {
                    strValueOf2 = String.valueOf(j14 - j12);
                } else {
                    strValueOf2 = "0";
                }
            } else {
                strValueOf2 = "0";
            }
            linkedHashMap2.put("delay", strValueOf2);
            linkedHashMap2.put("buffer_time", String.valueOf(this.f49003f));
            linkedHashMap2.put("buffer_count", String.valueOf(this.f49006h));
            linkedHashMap2.put("seek_count", String.valueOf(this.f49007i));
            j13 = this.f49023y;
            if (j13 > 0) {
                linkedHashMap2.put("play_complete", String.valueOf((this.f49010l / j13) * 100.0f));
                linkedHashMap2.put("total_duration", String.valueOf(this.f49023y));
            }
            linkedHashMap2.put("play_duration", String.valueOf(this.f49012n));
            linkedHashMap2.put("play_duration_middlepage", String.valueOf(this.f49014p));
            linkedHashMap2.put("play_duration_fullscreen", String.valueOf(this.f49013o));
            linkedHashMap2.put("play_duration_pip", String.valueOf(this.f49015q));
            linkedHashMap2.put("pause_duration", String.valueOf(this.f49021w));
            linkedHashMap2.put("pause_count", String.valueOf(this.f49022x));
            if (this.f49016r) {
                obj2 = obj;
            } else {
                obj2 = "0";
            }
            linkedHashMap2.put(CampaignEx.JSON_NATIVE_VIDEO_COMPLETE, obj2);
            linkedHashMap2.put("video_bitrate", String.valueOf(this.N));
            linkedHashMap2.put("audio_bitrate", String.valueOf(this.O));
        }
        if (z10) {
            obj3 = obj;
        } else {
            obj3 = "0";
        }
        linkedHashMap2.put("app_to_background", obj3);
        if (this.M) {
            obj4 = obj;
        } else {
            obj4 = "0";
        }
        linkedHashMap2.put("is_replay", obj4);
        tnPlayerType = this.f48996b0;
        if (tnPlayerType != null) {
            linkedHashMap2.put("error_player", String.valueOf(tnPlayerType));
        }
        if (this.f48998c0) {
            obj5 = obj;
        } else {
            obj5 = "0";
        }
        linkedHashMap2.put("aliyun_2_sfotdecoder", obj5);
        if (this.f49000d0) {
            obj6 = obj;
        } else {
            obj6 = "0";
        }
        linkedHashMap2.put("timeout_replay", obj6);
        mapA = com.transsnet.downloader.util.i.f59939a.a();
        if (!mapA.isEmpty()) {
            while (r3.hasNext()) {
                linkedHashMap2.put((String) entry2.getKey(), String.valueOf(((Number) entry2.getValue()).longValue()));
            }
        }
        num = this.f49024z;
        if (num != null) {
            linkedHashMap2.put("player_error_code", String.valueOf(num.intValue()));
        }
        str = this.A;
        if (str != null) {
            linkedHashMap2.put("player_error_msg", str);
        }
        if (this.Z.isEmpty()) {
            linkedHashMap2.put("subtitle_downloaded", "0");
        } else {
            linkedHashMap = new LinkedHashMap();
            List list2 = this.Z;
            ArrayList<eu.a> arrayList2 = new ArrayList();
            arrayList2.addAll(list2);
            while (r4.hasNext()) {
                if (aVar2.d()) {
                    lan = aVar2.b().getLan();
                    Intrinsics.e(lan);
                    if (linkedHashMap.containsKey(lan)) {
                        String lan3 = aVar2.b().getLan();
                        Intrinsics.e(lan3);
                        linkedHashMap.put(lan3, "");
                    }
                }
            }
            str2 = this.E;
            if (str2 == null) {
                str2 = "";
            }
            linkedHashMap2.put("subtitle_type", str2);
            str3 = this.F;
            if (str3 == null) {
                str3 = "";
            }
            linkedHashMap2.put("subtitle_lan", str3);
            linkedHashMap2.put("subtitle_from", String.valueOf(this.G));
            lg.a.C0828a.f(lg.a.f68839a, "ORSubtitle", "LanName= " + this.E + ",Lan = " + this.F + ", From = " + this.G, false, 4, null);
        }
        if (TextUtils.isEmpty(this.C)) {
            linkedHashMap2.put("subtitle_bilingual", CollectionsKt.q(this.C, this.D).toString());
        } else {
            linkedHashMap2.put("subtitle_bilingual", CollectionsKt.q(this.C, this.D).toString());
        }
        downloadBean = this.J;
        if (downloadBean == null) {
            z11 = false;
        } else {
            z11 = false;
        }
        if (!z11) {
            cVarF.b(this.f49012n);
        }
        c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, this.f48995b, "video exit， report and reset data", false, 4, null);
        if (this.f49024z != null) {
            c0828a.i(this.f48995b, "error " + hj.i.f64505a.o(linkedHashMap2), true);
        } else {
            String str13 = this.f48995b;
            Object obj8 = linkedHashMap2.get("is_start");
            downloadBean2 = this.J;
            if (downloadBean2 != null) {
                subjectId2 = downloadBean2.getSubjectId();
            } else {
                subjectId2 = null;
            }
            downloadBean3 = this.J;
            if (downloadBean3 != null) {
                resourceId2 = downloadBean3.getResourceId();
            } else {
                resourceId2 = null;
            }
            c0828a.i(str13, "is_start=" + obj8 + " subject_id=" + subjectId2 + " requestId=" + resourceId2 + " urlOrPath=" + this.I, true);
        }
        hj.i.f64505a.H(this.S, this.T, this.f49012n, linkedHashMap2);
        Bundle bundle2 = new Bundle();
        downloadBean4 = this.J;
        if (downloadBean4 != null) {
            subjectId3 = "";
        } else {
            subjectId3 = "";
        }
        bundle2.putString("subject_id", subjectId3);
        downloadBean5 = this.J;
        if (downloadBean5 != null) {
            resourceId3 = "";
        } else {
            resourceId3 = "";
        }
        bundle2.putString("resource_id", resourceId3);
        String str14 = this.H;
        bundle2.putString("play_type", str14 != null ? str14 : "");
        bundle2.putBoolean("is_music_liked_fragment", this.f49004f0);
        com.transsion.baselib.report.e.f43344a.l(this.T, bundle2, com.transsion.baselib.report.l.f43359a.o());
        y(z10);
    }

    public final boolean d() {
        return this.f48994a0;
    }

    public final Map e() {
        return this.Y;
    }

    public final void g() {
        this.f48997c = System.currentTimeMillis();
        lg.a.C0828a.f(lg.a.f68839a, this.f48995b, "initView", false, 4, null);
    }

    public final void h(Double d11, long j11, long j12, Double d12) {
        lg.a.C0828a.f(lg.a.f68839a, this.f48995b, "onBandwidthRedundancyRate", false, 4, null);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onBandwidthRedundancyRate: redundancyRate:");
        sb2.append(d11);
        sb2.append("，totalDownloadBytesAll : ");
        sb2.append(j11);
        sb2.append("，consumed:");
        sb2.append(j12);
        sb2.append(",poolPercent:");
        sb2.append(d12);
        this.f49008j = d11;
        this.f49009k = d12;
    }

    public final void i() {
        lg.a.C0828a.f(lg.a.f68839a, this.f48995b, "onCompletion", false, 4, null);
        this.f49016r = true;
    }

    public final void j() {
        lg.a.C0828a.f(lg.a.f68839a, this.f48995b, "onLoadingBegin", false, 4, null);
        this.f49005g = System.currentTimeMillis();
    }

    public final void k() {
        if (this.f49005g > 0) {
            this.f49003f += System.currentTimeMillis() - this.f49005g;
            this.f49006h++;
            this.f49005g = 0L;
        }
    }

    public final void l(LocalUiType uiType) {
        Intrinsics.h(uiType, "uiType");
        this.f49017s = uiType == LocalUiType.MIDDLE;
        lg.a.C0828a.f(lg.a.f68839a, this.f48995b, "onLocalUiChanged， uiType= " + uiType, false, 4, null);
    }

    public final void m(PlayError errorInfo) {
        Intrinsics.h(errorInfo, "errorInfo");
        this.f49024z = errorInfo.getErrorCode();
        String errorMessage = errorInfo.getErrorMessage();
        this.A = errorMessage;
        lg.a.C0828a.f(lg.a.f68839a, this.f48995b, "onPlayError, playerErrorCode  =" + this.f49024z + ", playerErrorMessage =" + errorMessage, false, 4, null);
        H(3, this.A);
    }

    public final void n(long j11) {
        yj.c cVarF;
        if (this.f49023y <= 0) {
            com.transsion.player.orplayer.g gVar = this.f48993a;
            this.f49023y = gVar != null ? gVar.getDuration() : 0L;
        }
        long j12 = this.f49011m;
        long j13 = j11 - j12;
        if (1 <= j13 && j13 < 2000) {
            this.f49012n += j11 - j12;
            if (this.f49018t) {
                this.f49015q += j11 - j12;
            } else if (this.f49017s) {
                this.f49014p += j11 - j12;
            } else {
                this.f49013o += j11 - j12;
            }
        }
        this.f49011m = j11;
        if (j11 > this.f49010l) {
            this.f49010l = j11;
        }
        DownloadBean downloadBean = this.J;
        if ((downloadBean == null || downloadBean.getSubjectType() != 6) && (cVarF = f()) != null) {
            cVarF.a(this.f49012n);
        }
    }

    public final void o() {
        lg.a.C0828a.f(lg.a.f68839a, this.f48995b, "onRenderFirstFrame", false, 4, null);
        this.f49001e = System.currentTimeMillis();
    }

    public final void p() {
        lg.a.C0828a.f(lg.a.f68839a, this.f48995b, "oonReplayonReplay", false, 4, null);
        this.M = true;
        this.f49019u = false;
    }

    public final void q() {
        this.f49007i++;
    }

    public final void r(List list) {
        Intrinsics.h(list, "list");
        this.Z.clear();
        this.Z.addAll(list);
    }

    public final void s(String name, String lan, int i11) {
        Intrinsics.h(name, "name");
        Intrinsics.h(lan, "lan");
        lg.a.C0828a.f(lg.a.f68839a, this.f48995b, "onSubtitleSelected = " + name, false, 4, null);
        this.E = name;
        this.F = lan;
        this.G = i11;
    }

    public final void t(String str, String str2) {
        this.C = str;
        this.D = str2;
    }

    public final void u(int i11) {
        this.O = i11;
    }

    public final void v(int i11) {
        this.N = i11;
    }

    public final void w() {
        this.f49022x++;
        lg.a.C0828a.f(lg.a.f68839a, this.f48995b, "onVideoPause", false, 4, null);
        this.f49020v = System.currentTimeMillis();
    }

    public final void x() {
        lg.a.C0828a.f(lg.a.f68839a, this.f48995b, "onVideoStart", false, 4, null);
        if (this.f49020v != 0) {
            this.f49021w += System.currentTimeMillis() - this.f49020v;
            this.f49020v = 0L;
        }
    }

    public final void z(boolean z10) {
        this.f48998c0 = z10;
    }
}
