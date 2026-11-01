package com.mbridge.msdk.video.dynview.util.draw;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.y;
import com.mbridge.msdk.video.dynview.c;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile a f39104d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f39105a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Bitmap f39106b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Bitmap f39107c;

    /* JADX INFO: renamed from: com.mbridge.msdk.video.dynview.util.draw.a$a, reason: collision with other inner class name */
    class RunnableC0563a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Bitmap f39108a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f39109b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ float f39110c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ float f39111d;

        /* JADX INFO: renamed from: com.mbridge.msdk.video.dynview.util.draw.a$a$a, reason: collision with other inner class name */
        class RunnableC0564a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ com.mbridge.msdk.video.dynview.shape.a.b f39113a;

            RunnableC0564a(com.mbridge.msdk.video.dynview.shape.a.b bVar) {
                this.f39113a = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (a.this.f39105a == null || this.f39113a.a() == null) {
                    return;
                }
                a.this.f39105a.setBackground(this.f39113a.a());
            }
        }

        RunnableC0563a(Bitmap bitmap, int i11, float f11, float f12) {
            this.f39108a = bitmap;
            this.f39109b = i11;
            this.f39110c = f11;
            this.f39111d = f12;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Bitmap bitmapA = y.a(this.f39108a, 10);
                Bitmap bitmapA2 = y.a(this.f39108a, 10);
                com.mbridge.msdk.video.dynview.shape.a.b bVarA = com.mbridge.msdk.video.dynview.shape.a.a();
                bVarA.a(this.f39109b).b(bitmapA).a(bitmapA2);
                if (this.f39109b == 2) {
                    float f11 = this.f39110c;
                    float f12 = this.f39111d;
                    if (f11 > f12) {
                        bVarA.b(f11).a(this.f39111d);
                    } else {
                        bVarA.b(f12).a(this.f39110c);
                    }
                } else {
                    bVarA.b(this.f39110c).a(this.f39111d);
                }
                if (a.this.f39105a != null) {
                    a.this.f39105a.post(new RunnableC0564a(bVarA));
                }
            } catch (Exception e11) {
                o0.b("ChoiceOneDrawBitBg", e11.getMessage());
            }
        }
    }

    private a() {
    }

    public static a a() {
        a aVar;
        if (f39104d != null) {
            return f39104d;
        }
        synchronized (a.class) {
            try {
                if (f39104d == null) {
                    f39104d = new a();
                }
                aVar = f39104d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    private synchronized void a(int i11, float f11, float f12, Bitmap bitmap, Bitmap bitmap2) {
        try {
            com.mbridge.msdk.foundation.same.threadpool.a.a().execute(new RunnableC0563a(bitmap, i11, f11, f12));
        } catch (Exception e11) {
            o0.a("ChoiceOneDrawBitBg", e11.getMessage());
        }
    }

    public void a(Map<String, Bitmap> map, c cVar, View view) {
        if (view == null || cVar == null || map == null || map.size() == 0 || map.size() < 2 || cVar.b() == null || cVar.b().size() < 2) {
            return;
        }
        this.f39105a = view;
        int iH = cVar.h();
        float fM = cVar.m();
        float fK = cVar.k();
        try {
            List<CampaignEx> listB = cVar.b();
            String md5 = listB.get(0) != null ? SameMD5.getMD5(listB.get(0).getImageUrl()) : "";
            String md6 = listB.get(1) != null ? SameMD5.getMD5(listB.get(1).getImageUrl()) : "";
            Bitmap bitmap = (TextUtils.isEmpty(md5) || !map.containsKey(md5)) ? null : map.get(md5);
            Bitmap bitmap2 = (TextUtils.isEmpty(md6) || !map.containsKey(md6)) ? null : map.get(md6);
            if (bitmap == null || bitmap.isRecycled() || bitmap2 == null || bitmap2.isRecycled()) {
                return;
            }
            a(iH, fM, fK, bitmap, bitmap2);
        } catch (Exception e11) {
            o0.b("ChoiceOneDrawBitBg", e11.getMessage());
        }
    }

    public void b() {
        if (this.f39105a != null) {
            this.f39105a = null;
        }
        Bitmap bitmap = this.f39106b;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.f39106b.recycle();
            this.f39106b = null;
        }
        Bitmap bitmap2 = this.f39107c;
        if (bitmap2 == null || bitmap2.isRecycled()) {
            return;
        }
        this.f39107c.recycle();
        this.f39107c = null;
    }
}
