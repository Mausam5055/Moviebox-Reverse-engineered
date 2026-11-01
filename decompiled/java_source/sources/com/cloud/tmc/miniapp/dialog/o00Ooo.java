package com.cloud.tmc.miniapp.dialog;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.action.AnimAction;
import com.cloud.tmc.miniapp.base.BaseAdapter;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
public final class o00Ooo extends OooO0O0.OooO00o<o00Ooo> implements BaseAdapter.OnItemClickListener {
    public oo000o OooO00o;
    public final Lazy OooO0O0;
    public final o00O0O OooO0OO;

    public static final class OooO00o extends Lambda implements Function0<RecyclerView> {
        public OooO00o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (RecyclerView) o00Ooo.this.findViewById(R.id.rv_image_album_list);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o00Ooo(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        this.OooO0O0 = LazyKt.b(new OooO00o());
        setContentView(R.layout.layout_image_album_dialog);
        setAnimStyle(AnimAction.Companion.getANIM_BOTTOM());
        o00O0O o00o0o = new o00O0O(context);
        this.OooO0OO = o00o0o;
        o00o0o.setOnItemClickListener(this);
        RecyclerView recyclerViewOooO00o = OooO00o();
        if (recyclerViewOooO00o == null) {
            return;
        }
        recyclerViewOooO00o.setAdapter(o00o0o);
    }

    public static final void OooO00o(o00Ooo this$0, int i11) {
        Intrinsics.h(this$0, "this$0");
        oo000o oo000oVar = this$0.OooO00o;
        if (oo000oVar != null) {
            oo000oVar.onSelected(this$0.getDialog(), i11, this$0.OooO0OO.getItem(i11));
        }
        this$0.dismiss();
    }

    public final RecyclerView OooO00o() {
        return (RecyclerView) this.OooO0O0.getValue();
    }

    @Override // com.cloud.tmc.miniapp.dialog.OooO0O0.OooO00o
    public OooO0O0 createDialog(Context context, int i11) {
        Intrinsics.h(context, "context");
        OooOOOO oooOOOO = new OooOOOO(context, i11);
        oooOOOO.OooO0o0.P0(getResources().getDisplayMetrics().heightPixels / 2);
        return oooOOOO;
    }

    @Override // com.cloud.tmc.miniapp.base.BaseAdapter.OnItemClickListener
    public void onItemClick(RecyclerView recyclerView, View view, final int i11) {
        for (o00Oo0 o00oo0 : this.OooO0OO.getData()) {
            if (o00oo0.OooO0o0) {
                o00oo0.OooO0o0 = false;
                break;
            }
        }
        this.OooO0OO.getItem(i11).OooO0o0 = true;
        this.OooO0OO.notifyDataSetChanged();
        postDelayed(new Runnable() { // from class: com.cloud.tmc.miniapp.dialog.k
            @Override // java.lang.Runnable
            public final void run() {
                o00Ooo.OooO00o(this.f23556a, i11);
            }
        }, 300L);
    }
}
