package com.transsion.postdetail.ui.dialog;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import androidx.appcompat.app.w;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.blankj.utilcode.util.a0;
import com.transsion.postdetail.R$drawable;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.R$style;
import com.transsion.postdetail.bean.NegativeFeedbackAction;
import java.util.HashMap;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes6.dex */
public final class h extends w {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f49448d = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final List f49449e = CollectionsKt.o("dislike_post", "dislike_category", "dislike_user", "report");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f49450a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f49451b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Function1 f49452c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(Context context, List actions, String pageName) {
        super(context, R$style.NegativeFeedbackDialogTheme);
        Intrinsics.h(context, "context");
        Intrinsics.h(actions, "actions");
        Intrinsics.h(pageName, "pageName");
        this.f49450a = actions;
        this.f49451b = pageName;
    }

    private final void i(String str, String str2) {
        HashMap map = new HashMap();
        map.put("dialog_name", "post_feedback");
        map.put("module_name", str2);
        hj.i.f64505a.F(str, "feature_click", map);
    }

    private final void k() {
        final View viewFindViewById;
        final View viewFindViewById2 = findViewById(R$id.dragHandle);
        if (viewFindViewById2 == null || (viewFindViewById = findViewById(R$id.llDialogRoot)) == null) {
            return;
        }
        final float fA = a0.a(40.0f);
        viewFindViewById.post(new Runnable() { // from class: com.transsion.postdetail.ui.dialog.f
            @Override // java.lang.Runnable
            public final void run() {
                h.l(viewFindViewById2, viewFindViewById);
            }
        });
        final Ref.FloatRef floatRef = new Ref.FloatRef();
        viewFindViewById2.setOnTouchListener(new View.OnTouchListener() { // from class: com.transsion.postdetail.ui.dialog.g
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return h.m(floatRef, viewFindViewById, fA, this, view, motionEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(View view, View view2) {
        int iA = a0.a(20.0f);
        Rect rect = new Rect();
        view.getHitRect(rect);
        rect.top -= iA;
        rect.bottom += iA;
        rect.left = 0;
        rect.right = view2.getWidth();
        view2.setTouchDelegate(new TouchDelegate(rect, view));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean m(Ref.FloatRef floatRef, View view, float f11, h hVar, View view2, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            floatRef.element = motionEvent.getRawY();
            return true;
        }
        if (action != 1) {
            if (action == 2) {
                view.setTranslationY(RangesKt.e(motionEvent.getRawY() - floatRef.element, 0.0f));
                return true;
            }
            if (action != 3) {
                return false;
            }
        }
        if (motionEvent.getRawY() - floatRef.element > f11) {
            hVar.dismiss();
            return true;
        }
        view.animate().translationY(0.0f).setDuration(200L).start();
        return true;
    }

    private final void n() {
        LinearLayout linearLayout = (LinearLayout) findViewById(R$id.llOptions);
        if (linearLayout == null) {
            return;
        }
        final int i11 = 0;
        for (Object obj : this.f49450a) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            final NegativeFeedbackAction negativeFeedbackAction = (NegativeFeedbackAction) obj;
            View viewInflate = LayoutInflater.from(getContext()).inflate(R$layout.item_negative_feedback_option, (ViewGroup) linearLayout, false);
            AppCompatImageView appCompatImageView = (AppCompatImageView) viewInflate.findViewById(R$id.ivOptionIcon);
            String iconUrl = negativeFeedbackAction.getIconUrl();
            if (iconUrl == null || iconUrl.length() == 0) {
                appCompatImageView.setImageResource(R$drawable.ic_post_negative_feedback);
            } else {
                ej.f.a aVar = ej.f.f61882a;
                Context context = getContext();
                Intrinsics.g(context, "getContext(...)");
                ej.f.b bVarG = aVar.m(context).g(iconUrl);
                Intrinsics.e(appCompatImageView);
                bVarG.d(appCompatImageView);
            }
            ((AppCompatTextView) viewInflate.findViewById(R$id.tvOptionTitle)).setText(negativeFeedbackAction.getTitle());
            if (i11 > 0) {
                ViewGroup.LayoutParams layoutParams = viewInflate.getLayoutParams();
                Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
                layoutParams2.topMargin = a0.a(16.0f);
                viewInflate.setLayoutParams(layoutParams2);
            }
            viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.dialog.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    h.o(this.f49439a, i11, negativeFeedbackAction, view);
                }
            });
            linearLayout.addView(viewInflate);
            i11 = i12;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(h hVar, int i11, NegativeFeedbackAction negativeFeedbackAction, View view) {
        String str = hVar.f49451b;
        List list = f49449e;
        hVar.i(str, (String) ((i11 < 0 || i11 >= list.size()) ? "" : list.get(i11)));
        Function1 function1 = hVar.f49452c;
        if (function1 != null) {
            function1.invoke(negativeFeedbackAction);
        }
        hVar.dismiss();
    }

    public final void j(Function1 function1) {
        this.f49452c = function1;
    }

    @Override // androidx.appcompat.app.w, androidx.activity.q, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.dialog_negative_feedback);
        setCanceledOnTouchOutside(true);
        Window window = getWindow();
        if (window != null) {
            window.setGravity(80);
            window.setWindowAnimations(R$style.NegativeFeedbackDialogAnimation);
            window.setDimAmount(0.42f);
            WindowManager.LayoutParams attributes = window.getAttributes();
            if (attributes == null) {
                attributes = new WindowManager.LayoutParams();
            }
            attributes.width = -1;
            attributes.height = -2;
            window.setAttributes(attributes);
        }
        n();
        k();
    }
}
