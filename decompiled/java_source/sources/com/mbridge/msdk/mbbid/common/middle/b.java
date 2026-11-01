package com.mbridge.msdk.mbbid.common.middle;

import android.content.Context;
import android.text.TextUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.net.utils.d;
import com.mbridge.msdk.foundation.same.net.wrapper.e;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbbanner.common.util.BannerUtils;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.mbridge.msdk.mbbid.out.BidListennning;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f36202a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f36203b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f36204c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private BidListennning f36206e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private BidResponsedEx f36207f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f36208g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f36210i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f36211j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f36212k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f36213l;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f36209h = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f36205d = com.mbridge.msdk.foundation.controller.c.m().d();

    class a extends com.mbridge.msdk.mbbid.common.middle.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f36214b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, String str2, String str3) {
            super(str, str2);
            this.f36214b = str3;
        }

        @Override // com.mbridge.msdk.mbbid.common.net.c
        public void a(int i11, String str) {
            b.this.f36209h = false;
            com.mbridge.msdk.mbbid.common.report.a.a(b.this.f36205d, b.this.f36203b, str, this.f36214b);
            b.this.a(str);
        }

        @Override // com.mbridge.msdk.mbbid.common.net.c
        public void a(BidResponsedEx bidResponsedEx) {
            b.this.f36209h = false;
            b.this.f36207f = bidResponsedEx;
            com.mbridge.msdk.mbbid.common.report.a.a(b.this.f36205d, b.this.f36203b, bidResponsedEx.getBidId(), this.f36214b, bidResponsedEx.getBidToken());
            b.this.a(bidResponsedEx);
        }
    }

    public b(String str, String str2, String str3) {
        this.f36202a = str;
        this.f36203b = str2;
        this.f36204c = str3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(BidResponsed bidResponsed) {
        BidListennning bidListennning = this.f36206e;
        if (bidListennning != null) {
            bidListennning.onSuccessed(bidResponsed);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        BidListennning bidListennning = this.f36206e;
        if (bidListennning != null) {
            bidListennning.onFailed(str);
        }
    }

    public void a(int i11) {
        this.f36208g = i11;
    }

    public void a(long j11) {
        this.f36210i = j11;
    }

    public void a(BidListennning bidListennning) {
        this.f36206e = bidListennning;
    }

    public void a(boolean z10) {
        try {
            if (this.f36209h) {
                a("current unit is biding");
                return;
            }
            this.f36209h = true;
            if (this.f36205d == null) {
                a("context is null");
            }
            com.mbridge.msdk.mbbid.common.net.a aVar = new com.mbridge.msdk.mbbid.common.net.a(this.f36205d);
            e eVar = new e();
            String strB = com.mbridge.msdk.foundation.controller.c.m().b();
            eVar.a("app_id", strB);
            eVar.a(TmcConstants.EXTRA_APP_DEV_TOKEN, SameMD5.getMD5(strB + com.mbridge.msdk.foundation.controller.c.m().c()));
            eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36203b);
            if (TextUtils.isEmpty(this.f36202a)) {
                this.f36202a = "";
            }
            eVar.a("placement_id", this.f36202a);
            if (com.mbridge.msdk.util.b.a()) {
                eVar.a("install_ids", c.a());
            }
            eVar.a("bid_floor", this.f36204c);
            eVar.a(e.f35501h, t0.a(this.f36205d, this.f36203b));
            eVar.a(e.f35500g, com.mbridge.msdk.foundation.same.buffer.b.a(this.f36203b, ""));
            String str = "1";
            eVar.a("req_type", this.f36212k ? "1" : "2");
            eVar.a("orientation", k0.F(this.f36205d) + "");
            int i11 = this.f36208g;
            if (i11 == 296) {
                if (this.f36210i <= 0 || this.f36211j <= 0) {
                    a("bid required param is missing or error");
                    return;
                }
                eVar.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_UNIT_SIZE, this.f36211j + "x" + this.f36210i);
                try {
                    int i12 = BannerUtils.f36148a;
                    Method method = BannerUtils.class.getMethod("getCloseIds", String.class);
                    if (method.invoke(null, this.f36203b) instanceof String) {
                        eVar.a("close_id", method.invoke(null, this.f36203b).toString());
                    }
                } catch (Exception unused) {
                    a("banner module is miss");
                    return;
                }
            } else if (i11 == 297) {
                if (this.f36210i <= 0 || this.f36211j <= 0) {
                    a("ad display area is too small");
                    return;
                }
                eVar.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_UNIT_SIZE, this.f36211j + "x" + this.f36210i);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.f36213l);
                sb2.append("");
                eVar.a("orientation", sb2.toString());
            } else if (i11 != 298) {
                if (!z10) {
                    str = "0";
                }
                eVar.a("rw_plus", str);
            } else {
                if (this.f36210i <= 0 || this.f36211j <= 0) {
                    a("bid required param is missing or error");
                    return;
                }
                eVar.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_UNIT_SIZE, this.f36211j + "x" + this.f36210i);
            }
            String md5 = SameMD5.getMD5(t0.d());
            eVar.a(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID, md5);
            a aVar2 = new a(this.f36202a, this.f36203b, md5);
            aVar2.setUnitId(this.f36203b);
            aVar2.setPlacementId(this.f36202a);
            aVar.get(1, d.h().a(false, ""), eVar, aVar2, "bid_request", 30000L);
        } catch (Throwable th2) {
            a(th2.getMessage());
        }
    }

    public void b(int i11) {
        this.f36213l = i11;
    }

    public void b(long j11) {
        this.f36211j = j11;
    }

    public void b(boolean z10) {
        this.f36212k = z10;
    }
}
