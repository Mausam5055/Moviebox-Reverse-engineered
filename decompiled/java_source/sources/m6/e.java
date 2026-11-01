package m6;

import androidx.recyclerview.widget.j;
import com.chad.library.adapter.base.BaseQuickAdapter;
import kotlin.jvm.internal.Intrinsics;
import r6.f;

/* JADX INFO: loaded from: classes3.dex */
public final class e implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BaseQuickAdapter f69344a;

    public e(BaseQuickAdapter mAdapter) {
        Intrinsics.h(mAdapter, "mAdapter");
        this.f69344a = mAdapter;
    }

    @Override // androidx.recyclerview.widget.j
    public void onChanged(int i11, int i12, Object obj) {
        BaseQuickAdapter baseQuickAdapter = this.f69344a;
        baseQuickAdapter.notifyItemRangeChanged(i11 + baseQuickAdapter.a0(), i12, obj);
    }

    @Override // androidx.recyclerview.widget.j
    public void onInserted(int i11, int i12) {
        BaseQuickAdapter baseQuickAdapter = this.f69344a;
        baseQuickAdapter.notifyItemRangeInserted(i11 + baseQuickAdapter.a0(), i12);
    }

    @Override // androidx.recyclerview.widget.j
    public void onMoved(int i11, int i12) {
        BaseQuickAdapter baseQuickAdapter = this.f69344a;
        baseQuickAdapter.notifyItemMoved(i11 + baseQuickAdapter.a0(), i12 + this.f69344a.a0());
    }

    @Override // androidx.recyclerview.widget.j
    public void onRemoved(int i11, int i12) {
        f fVarI0 = this.f69344a.i0();
        if (fVarI0 != null && fVarI0.m() && this.f69344a.getItemCount() == 0) {
            BaseQuickAdapter baseQuickAdapter = this.f69344a;
            baseQuickAdapter.notifyItemRangeRemoved(i11 + baseQuickAdapter.a0(), i12 + 1);
        } else {
            BaseQuickAdapter baseQuickAdapter2 = this.f69344a;
            baseQuickAdapter2.notifyItemRangeRemoved(i11 + baseQuickAdapter2.a0(), i12);
        }
    }
}
