package com.mbridge.msdk.dycreator.binding;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.mbridge.msdk.dycreator.baseview.MBApkInfoView;
import com.mbridge.msdk.dycreator.baseview.MBFeedBack;
import com.mbridge.msdk.dycreator.baseview.MBLogoTextView;
import com.mbridge.msdk.dycreator.baseview.MBSplashClickView;
import com.mbridge.msdk.dycreator.baseview.MBSplashImageBgView;
import com.mbridge.msdk.dycreator.baseview.MBSplashPortView;
import com.mbridge.msdk.dycreator.baseview.MBSplashShakeView;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.binding.response.SplashResData;
import com.mbridge.msdk.dycreator.bridge.MBSplashData;
import com.mbridge.msdk.dycreator.bus.EventBus;
import com.mbridge.msdk.dycreator.listener.DyCountDownListenerWrapper;
import com.mbridge.msdk.dycreator.listener.action.EAction;
import com.mbridge.msdk.dycreator.viewmodel.BaseViewModel;
import com.mbridge.msdk.dycreator.viewobserver.h;
import com.mbridge.msdk.dycreator.viewobserver.i;
import com.mbridge.msdk.dycreator.wrapper.DyOption;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.n0;
import com.mbridge.msdk.foundation.tools.o0;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile b f34732g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.mbridge.msdk.dycreator.viewobserver.d f34733a = (com.mbridge.msdk.dycreator.viewobserver.d) com.mbridge.msdk.dycreator.subjectfactory.a.a().a(com.mbridge.msdk.dycreator.subjectfactory.a.b.VIEW_OBSERVER);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.mbridge.msdk.dycreator.viewobserver.c f34734b = (com.mbridge.msdk.dycreator.viewobserver.c) com.mbridge.msdk.dycreator.subjectfactory.a.a().a(com.mbridge.msdk.dycreator.subjectfactory.a.b.CLICK_OBSERVER);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.mbridge.msdk.dycreator.viewobserver.f f34735c = (com.mbridge.msdk.dycreator.viewobserver.f) com.mbridge.msdk.dycreator.subjectfactory.a.a().a(com.mbridge.msdk.dycreator.subjectfactory.a.b.EFFECT_OBSERVER);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private h f34736d = (h) com.mbridge.msdk.dycreator.subjectfactory.a.a().a(com.mbridge.msdk.dycreator.subjectfactory.a.b.REPORT_OBSERVER);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private BaseViewModel f34737e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.mbridge.msdk.shake.b f34738f;

    class a implements com.mbridge.msdk.dycreator.viewobserver.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f34739a;

        a(View view) {
            this.f34739a = view;
        }

        @Override // com.mbridge.msdk.dycreator.viewobserver.g
        public void a(Object obj) {
            try {
                KeyEvent.Callback callback = this.f34739a;
                if (callback instanceof InterBase) {
                    b.this.b((InterBase) callback, obj);
                }
            } catch (Exception e11) {
                o0.b("MBDataBinding", e11.getMessage());
            }
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.dycreator.binding.b$b, reason: collision with other inner class name */
    class C0476b implements com.mbridge.msdk.dycreator.viewobserver.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f34741a;

        C0476b(View view) {
            this.f34741a = view;
        }

        @Override // com.mbridge.msdk.dycreator.viewobserver.e
        public void a(Object obj) {
            try {
                KeyEvent.Callback callback = this.f34741a;
                if (callback instanceof InterBase) {
                    b.this.a((InterBase) callback, obj);
                }
            } catch (Exception e11) {
                o0.b("MBDataBinding", e11.getMessage());
            }
        }
    }

    class c implements i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f34743a;

        c(View view) {
            this.f34743a = view;
        }

        @Override // com.mbridge.msdk.dycreator.viewobserver.i
        public void a(Object obj) {
            try {
                KeyEvent.Callback callback = this.f34743a;
                if (callback instanceof InterBase) {
                    b.this.c((InterBase) callback, obj);
                }
            } catch (Exception e11) {
                o0.b("MBDataBinding", e11.getMessage());
            }
        }
    }

    class d implements com.mbridge.msdk.dycreator.viewobserver.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f34745a;

        d(View view) {
            this.f34745a = view;
        }

        @Override // com.mbridge.msdk.dycreator.viewobserver.b
        public void a(Object obj) {
            if (obj == null) {
                return;
            }
            try {
                if (com.mbridge.msdk.dycreator.utils.d.a(this.f34745a, (com.mbridge.msdk.dycreator.viewdata.base.a) obj)) {
                    b.this.a(this.f34745a, obj);
                }
            } catch (Exception e11) {
                o0.b("MBDataBinding", e11.getMessage());
            }
        }
    }

    class e implements DyCountDownListenerWrapper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f34747a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f34748b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f34749c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ View f34750d;

        e(boolean z10, String str, String str2, View view) {
            this.f34747a = z10;
            this.f34748b = str;
            this.f34749c = str2;
            this.f34750d = view;
        }

        @Override // com.mbridge.msdk.dycreator.listener.DyCountDownListenerWrapper
        public void getCountDownValue(int i11) {
            if (i11 != 0) {
                ((TextView) this.f34750d).setText(com.mbridge.msdk.dycreator.utils.d.a(this.f34747a, i11, this.f34748b, this.f34749c));
            } else {
                SplashResData splashResData = new SplashResData();
                splashResData.seteAction(EAction.CLOSE);
                EventBus.getDefault().post(splashResData);
            }
        }
    }

    class f implements com.mbridge.msdk.foundation.same.image.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.dycreator.viewdata.base.a f34752a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f34753b;

        f(com.mbridge.msdk.dycreator.viewdata.base.a aVar, View view) {
            this.f34752a = aVar;
            this.f34753b = view;
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            View view = this.f34753b;
            if (view != null) {
                ((ImageView) view).setBackgroundColor(-7829368);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            if (bitmap != null) {
                try {
                    if (!bitmap.isRecycled()) {
                        boolean z10 = bitmap.getWidth() > bitmap.getHeight();
                        if ((this.f34752a.getEffectData().getOrientation() == 1 ? this.f34753b.getResources().getConfiguration().orientation : this.f34752a.getEffectData().getOrientation()) == 1) {
                            if (z10) {
                                View view = this.f34753b;
                                if (view instanceof MBSplashPortView) {
                                    if (view.getParent() != null) {
                                        ((ViewGroup) this.f34753b.getParent()).setVisibility(8);
                                        return;
                                    }
                                    return;
                                } else if (view instanceof MBSplashImageBgView) {
                                    view.setVisibility(0);
                                    Bitmap bitmapA = n0.a(bitmap);
                                    ((MBSplashImageBgView) this.f34753b).setScaleType(ImageView.ScaleType.CENTER_CROP);
                                    ((MBSplashImageBgView) this.f34753b).setImageBitmap(bitmapA);
                                    return;
                                }
                            } else {
                                View view2 = this.f34753b;
                                if (view2 instanceof MBSplashPortView) {
                                    view2.setVisibility(0);
                                    ((MBSplashPortView) this.f34753b).setScaleType(ImageView.ScaleType.FIT_CENTER);
                                    ((MBSplashPortView) this.f34753b).setImageBitmap(bitmap);
                                    return;
                                } else if (view2 instanceof MBSplashImageBgView) {
                                    view2.setVisibility(8);
                                    return;
                                } else if (view2 instanceof InterBase) {
                                    String effectDes = ((InterBase) view2).getEffectDes();
                                    ViewGroup viewGroup = (ViewGroup) this.f34753b.getParent();
                                    if (viewGroup != null) {
                                        com.mbridge.msdk.dycreator.utils.d.a(effectDes, viewGroup, true);
                                    }
                                }
                            }
                        } else if (z10) {
                            View view3 = this.f34753b;
                            if (view3 instanceof MBSplashPortView) {
                                view3.setVisibility(0);
                                ((MBSplashPortView) this.f34753b).setScaleType(ImageView.ScaleType.FIT_XY);
                                ((ImageView) this.f34753b).setImageBitmap(bitmap);
                                return;
                            } else if (view3 instanceof MBSplashImageBgView) {
                                view3.setVisibility(8);
                                ((MBSplashImageBgView) this.f34753b).setImageBitmap(n0.a(bitmap));
                                return;
                            } else if (view3 instanceof InterBase) {
                                String effectDes2 = ((InterBase) view3).getEffectDes();
                                ViewGroup viewGroup2 = (ViewGroup) this.f34753b.getParent();
                                if (viewGroup2 != null) {
                                    com.mbridge.msdk.dycreator.utils.d.a(effectDes2, viewGroup2, true);
                                }
                            }
                        } else {
                            View view4 = this.f34753b;
                            if (view4 instanceof MBSplashPortView) {
                                view4.setVisibility(0);
                                ((MBSplashPortView) this.f34753b).setImageBitmap(bitmap);
                                return;
                            } else {
                                if (view4 instanceof MBSplashImageBgView) {
                                    view4.setVisibility(0);
                                    Bitmap bitmapA2 = n0.a(bitmap);
                                    ((MBSplashImageBgView) this.f34753b).setScaleType(ImageView.ScaleType.CENTER_CROP);
                                    ((MBSplashImageBgView) this.f34753b).setImageBitmap(bitmapA2);
                                    return;
                                }
                                if (view4 instanceof InterBase) {
                                    String effectDes3 = ((InterBase) view4).getEffectDes();
                                    ViewGroup viewGroup3 = (ViewGroup) this.f34753b.getParent();
                                    if (viewGroup3 != null) {
                                        com.mbridge.msdk.dycreator.utils.d.a(effectDes3, viewGroup3, true);
                                    }
                                }
                            }
                        }
                        ((ImageView) this.f34753b).setImageBitmap(bitmap);
                        return;
                    }
                } catch (Exception e11) {
                    o0.b("MBDataBinding", e11.getMessage());
                    return;
                }
            }
            ((ImageView) this.f34753b).setBackgroundColor(-7829368);
        }
    }

    class g extends com.mbridge.msdk.shake.b {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ View f34755g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ MBSplashData f34756h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(int i11, int i12, View view, MBSplashData mBSplashData) {
            super(i11, i12);
            this.f34755g = view;
            this.f34756h = mBSplashData;
        }

        @Override // com.mbridge.msdk.shake.b
        public void a() {
            View view = this.f34755g;
            if (view != null) {
                try {
                    if (view.getGlobalVisibleRect(new Rect())) {
                        SplashResData splashResData = new SplashResData();
                        this.f34756h.setClickType(4);
                        splashResData.setBaseViewData(this.f34756h);
                        splashResData.seteAction(EAction.DOWNLOAD);
                        EventBus.getDefault().post(splashResData);
                        com.mbridge.msdk.shake.a.a().b(b.this.f34738f);
                    }
                } catch (Exception e11) {
                    o0.b("MBDataBinding", e11.getMessage());
                }
            }
        }
    }

    private b() {
    }

    public static b a() {
        if (f34732g == null) {
            synchronized (b.class) {
                try {
                    if (f34732g == null) {
                        f34732g = new b();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f34732g;
    }

    private com.mbridge.msdk.shake.b a(View view, MBSplashData mBSplashData) {
        if (mBSplashData != null) {
            try {
                DyOption dyOption = mBSplashData.getDyOption();
                if (dyOption != null && dyOption.isShakeVisible() && this.f34738f == null) {
                    this.f34738f = new g(dyOption.getShakeStrenght(), dyOption.getShakeTime() * 1000, view, mBSplashData);
                }
            } catch (Exception e11) {
                o0.b("MBDataBinding", e11.getMessage());
            }
        }
        return this.f34738f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, Object obj) {
        if (view == null || obj == null || !(obj instanceof com.mbridge.msdk.dycreator.viewdata.base.a)) {
            return;
        }
        view.setOnClickListener(new com.mbridge.msdk.dycreator.binding.a((com.mbridge.msdk.dycreator.viewdata.base.a) obj));
    }

    private void a(View view, Object obj, com.mbridge.msdk.dycreator.viewdata.base.a aVar) {
        if (view == null || obj == null) {
            return;
        }
        try {
            if (view instanceof TextView) {
                try {
                    ((TextView) view).setText(String.valueOf(obj).replace("\\n", "\n"));
                    return;
                } catch (Exception e11) {
                    e11.printStackTrace();
                    return;
                }
            }
            if (view instanceof ImageView) {
                if (obj instanceof Integer) {
                    ((ImageView) view).setImageResource(((Integer) obj).intValue());
                }
                if (obj instanceof String) {
                    com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(obj.toString(), new f(aVar, view));
                }
            }
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }

    private void a(View view, Object obj, Object obj2) {
        int countDownTime;
        boolean z10;
        if (obj == null || !(obj instanceof String)) {
            return;
        }
        com.mbridge.msdk.dycreator.viewdata.base.a aVar = (com.mbridge.msdk.dycreator.viewdata.base.a) obj2;
        if (obj.equals("countdown") && view != null && (view instanceof TextView) && aVar != null) {
            TextView textView = (TextView) view;
            String str = (String) textView.getText();
            String strP = k0.p(view.getContext());
            DyOption effectData = aVar.getEffectData();
            if (effectData != null) {
                boolean zIsCanSkip = effectData.isCanSkip();
                countDownTime = effectData.getCountDownTime();
                z10 = zIsCanSkip;
            } else {
                countDownTime = 5;
                z10 = false;
            }
            textView.setText(com.mbridge.msdk.dycreator.utils.d.a(z10, countDownTime, str, strP));
            aVar.getEffectData().setDyCountDownListenerWrapper(new e(z10, str, strP, view));
        }
        obj.equals("anim");
        if (obj.equals("visible")) {
            if (view instanceof MBFeedBack) {
                if (com.mbridge.msdk.foundation.feedback.b.b().a()) {
                    view.setVisibility(0);
                } else {
                    view.setVisibility(8);
                }
            }
            if (!(view instanceof MBLogoTextView) || aVar == null || aVar.getEffectData() == null || aVar.getEffectData().isLogoVisible()) {
                return;
            }
            ((MBLogoTextView) view).setCompoundDrawables(null, null, null, null);
        }
    }

    private void a(ViewGroup viewGroup, Object obj, com.mbridge.msdk.dycreator.viewdata.base.a aVar) {
        if (obj == null || !(obj instanceof String)) {
            return;
        }
        if (obj.equals("wobble") && (viewGroup instanceof MBSplashShakeView)) {
            if (aVar.getEffectData().isShakeVisible()) {
                if (this.f34738f != null) {
                    com.mbridge.msdk.shake.a.a().b(this.f34738f);
                }
                com.mbridge.msdk.shake.a.a().a(a((View) viewGroup, (MBSplashData) aVar));
            } else if (this.f34738f != null) {
                com.mbridge.msdk.shake.a.a().b(this.f34738f);
            }
        }
        if (obj.equals("visible") && (viewGroup instanceof MBApkInfoView)) {
            if (!aVar.getEffectData().isApkInfoVisible()) {
                viewGroup.setVisibility(8);
            } else if (!(aVar instanceof MBSplashData) || TextUtils.isEmpty(((MBSplashData) aVar).getAppInfo())) {
                viewGroup.setVisibility(4);
            } else {
                viewGroup.setVisibility(0);
            }
        }
        obj.equals("anim");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void a(InterBase interBase, Object obj) {
        if (interBase == 0 || obj == null) {
            return;
        }
        String effectDes = interBase.getEffectDes();
        if (TextUtils.isEmpty(effectDes)) {
            return;
        }
        try {
            if (interBase instanceof ViewGroup) {
                a((ViewGroup) interBase, (Object) effectDes, (com.mbridge.msdk.dycreator.viewdata.base.a) obj);
            } else if (interBase instanceof View) {
                a((View) interBase, effectDes, obj);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void a(com.mbridge.msdk.dycreator.viewobserver.b bVar, int i11) {
        com.mbridge.msdk.dycreator.viewobserver.c cVar = this.f34734b;
        if (cVar != null) {
            cVar.a(bVar, i11);
        }
    }

    private void a(com.mbridge.msdk.dycreator.viewobserver.e eVar, int i11) {
        com.mbridge.msdk.dycreator.viewobserver.f fVar = this.f34735c;
        if (fVar != null) {
            fVar.a(eVar, i11);
        }
    }

    private void a(com.mbridge.msdk.dycreator.viewobserver.g gVar, int i11) {
        h hVar = this.f34736d;
        if (hVar != null) {
            hVar.a(gVar, i11);
        }
    }

    private void a(i iVar, int i11) {
        com.mbridge.msdk.dycreator.viewobserver.d dVar = this.f34733a;
        if (dVar != null) {
            dVar.a(iVar, i11);
        }
    }

    private void b(ViewGroup viewGroup, Object obj, com.mbridge.msdk.dycreator.viewdata.base.a aVar) {
        if (viewGroup != null) {
            if (viewGroup instanceof MBSplashClickView) {
                if (aVar == null || aVar.getEffectData() == null || !aVar.getEffectData().isClickButtonVisible() || aVar.getEffectData().isShakeVisible()) {
                    viewGroup.setVisibility(8);
                } else if (obj != null && !TextUtils.isEmpty(obj.toString())) {
                    viewGroup.setVisibility(0);
                    ((MBSplashClickView) viewGroup).initView(obj.toString());
                }
            }
            if (viewGroup instanceof MBSplashShakeView) {
                if (aVar == null || aVar.getEffectData() == null || !aVar.getEffectData().isShakeVisible()) {
                    viewGroup.setVisibility(8);
                } else {
                    if (obj == null || TextUtils.isEmpty(obj.toString())) {
                        return;
                    }
                    viewGroup.setVisibility(0);
                    ((MBSplashShakeView) viewGroup).initView(obj.toString());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(InterBase interBase, Object obj) {
        if (interBase == null || obj == null) {
            return;
        }
        String reportDes = interBase.getReportDes();
        if (TextUtils.isEmpty(reportDes)) {
            return;
        }
        try {
            if (!(obj instanceof com.mbridge.msdk.dycreator.viewdata.base.a) || ((com.mbridge.msdk.dycreator.viewdata.base.a) obj).getBindData() == null) {
                return;
            }
            interBase.setDynamicReport(reportDes, ((com.mbridge.msdk.dycreator.viewdata.base.a) obj).getBindData());
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void c(InterBase interBase, Object obj) {
        if (interBase == 0 || obj == null) {
            return;
        }
        String bindDataDes = interBase.getBindDataDes();
        if (TextUtils.isEmpty(bindDataDes)) {
            return;
        }
        try {
            Object objA = com.mbridge.msdk.dycreator.utils.d.a(obj, bindDataDes);
            if (objA == null) {
                return;
            }
            if (interBase instanceof ViewGroup) {
                b((ViewGroup) interBase, objA, (com.mbridge.msdk.dycreator.viewdata.base.a) obj);
            } else if (interBase instanceof View) {
                a((View) interBase, objA, (com.mbridge.msdk.dycreator.viewdata.base.a) obj);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a(View view) {
        if (view != 0) {
            try {
                if (view instanceof InterBase) {
                    String actionDes = ((InterBase) view).getActionDes();
                    if (!TextUtils.isEmpty(actionDes)) {
                        if (actionDes.startsWith("click")) {
                            a(new d(view), view.getId());
                        } else if (!actionDes.equals("move") && !actionDes.equals("long_click")) {
                            actionDes.equals("wobble");
                        }
                    }
                }
            } catch (Exception e11) {
                o0.b("MBDataBinding", e11.getMessage());
            }
        }
    }

    public void a(BaseViewModel baseViewModel) {
        this.f34737e = baseViewModel;
        if (baseViewModel != null) {
            baseViewModel.setClickSubject(this.f34734b);
            this.f34737e.setConcreteSubject(this.f34733a);
            this.f34737e.setEffectSubject(this.f34735c);
            this.f34737e.setReportSubject(this.f34736d);
        }
    }

    public synchronized void b() {
        try {
            com.mbridge.msdk.dycreator.viewobserver.c cVar = this.f34734b;
            if (cVar != null) {
                cVar.a();
            }
            com.mbridge.msdk.dycreator.viewobserver.d dVar = this.f34733a;
            if (dVar != null) {
                dVar.a();
            }
            com.mbridge.msdk.dycreator.viewobserver.f fVar = this.f34735c;
            if (fVar != null) {
                fVar.a();
            }
            if (this.f34737e != null) {
                this.f34737e = null;
            }
            if (this.f34738f != null) {
                this.f34738f = null;
            }
            if (f34732g != null) {
                f34732g = null;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void b(View view) {
        a(new c(view), view.getId());
    }

    public void c(View view) {
        a(new C0476b(view), view.getId());
    }

    public void d(View view) {
        a(new a(view), view.getId());
    }
}
