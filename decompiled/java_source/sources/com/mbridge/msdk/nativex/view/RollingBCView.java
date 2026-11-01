package com.mbridge.msdk.nativex.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.viewpager.widget.ViewPager;
import com.mbridge.msdk.nativex.adapter.RollingAdapter;
import com.mbridge.msdk.nativex.listener.RollingPagerListenrt;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.out.NativeListener;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class RollingBCView extends ViewPager {
    private NativeListener.FilpListener FilpListening;
    private boolean isReport;
    private RollingPagerListenrt listenrt;
    private MBNativeRollView.a mvinterface;

    public RollingBCView(Context context) {
        super(context);
        this.isReport = true;
        this.listenrt = new RollingPagerListenrt();
    }

    private RollingBCView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isReport = true;
        this.listenrt = new RollingPagerListenrt();
        setOffscreenPageLimit(1);
        setClipChildren(false);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    protected void onMeasure(int i11, int i12) {
        if (View.MeasureSpec.getMode(i12) == Integer.MIN_VALUE) {
            int i13 = 0;
            for (int i14 = 0; i14 < getChildCount(); i14++) {
                View childAt = getChildAt(i14);
                childAt.measure(i11, View.MeasureSpec.makeMeasureSpec(0, 0));
                int measuredHeight = childAt.getMeasuredHeight();
                if (measuredHeight > i13) {
                    i13 = measuredHeight;
                }
                if (measuredHeight > 10 && this.isReport) {
                    this.listenrt.reportRollBC(0);
                    this.isReport = false;
                }
            }
            i12 = View.MeasureSpec.makeMeasureSpec(i13, 1073741824);
        }
        super.onMeasure(i11, i12);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i11) {
        super.onWindowVisibilityChanged(i11);
    }

    public void setData(List<Frame> list, Context context, String str, MBNativeRollView.a aVar) {
        if (list == null || list.size() == 0) {
            throw new NegativeArraySizeException("ad date is null or size is 0");
        }
        RollingAdapter rollingAdapter = new RollingAdapter(list);
        if (aVar != null) {
            rollingAdapter.setMvinterface(aVar);
        }
        setAdapter(rollingAdapter);
        this.listenrt.setCampList(list, context, str);
        NativeListener.FilpListener filpListener = this.FilpListening;
        if (filpListener != null) {
            this.listenrt.setFilpListening(filpListener);
        }
        setOnPageChangeListener(this.listenrt);
        if (this.isReport) {
            this.listenrt.reportRollBC(0);
            this.isReport = false;
        }
    }

    public void setFilpListening(NativeListener.FilpListener filpListener) {
        this.FilpListening = filpListener;
    }
}
