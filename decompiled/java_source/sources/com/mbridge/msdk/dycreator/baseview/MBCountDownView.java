package com.mbridge.msdk.dycreator.baseview;

import android.content.Context;
import android.util.AttributeSet;
import com.mbridge.msdk.dycreator.binding.response.SplashResData;
import com.mbridge.msdk.dycreator.bus.EventBus;
import com.mbridge.msdk.dycreator.listener.action.EAction;
import com.mbridge.msdk.util.timer.a;
import com.mbridge.msdk.util.timer.b;

/* JADX INFO: loaded from: classes5.dex */
public class MBCountDownView extends MBTextView {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f34450f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private MBCountDownView f34451g;

    public MBCountDownView(Context context) {
        super(context);
        this.f34451g = this;
    }

    public MBCountDownView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f34451g = this;
    }

    public MBCountDownView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f34451g = this;
    }

    public void initView(final String str, final String str2, int i11) {
        this.f34450f = new b().b(i11 * 1000).a(1000L).a(new a() { // from class: com.mbridge.msdk.dycreator.baseview.MBCountDownView.1
            @Override // com.mbridge.msdk.util.timer.a
            public void onFinish() {
                MBCountDownView.this.f34450f.a();
                SplashResData splashResData = new SplashResData();
                splashResData.seteAction(EAction.CLOSE);
                EventBus.getDefault().post(splashResData);
            }

            @Override // com.mbridge.msdk.util.timer.a
            public void onTick(long j11) {
                if (str2.startsWith("zh")) {
                    MBCountDownView.this.f34451g.setText((j11 / 1000) + "s" + str);
                    return;
                }
                MBCountDownView.this.f34451g.setText(MBCountDownView.this.f34451g + " " + (j11 / 1000) + "s");
            }
        });
    }

    @Override // com.mbridge.msdk.dycreator.baseview.MBTextView, android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        b bVar = this.f34450f;
        if (bVar != null) {
            bVar.c();
        }
    }

    @Override // com.mbridge.msdk.dycreator.baseview.MBTextView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b bVar = this.f34450f;
        if (bVar != null) {
            bVar.a();
        }
    }
}
