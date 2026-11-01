package op;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$layout;
import com.transsion.publish.view.operation.OperationBean;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class e extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f71086a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f71087b;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(e eVar, OperationBean operationBean, int i11, View view) {
        a aVar = eVar.f71087b;
        if (aVar != null) {
            aVar.a(operationBean, i11);
        }
    }

    public final void addData(List data) {
        Intrinsics.h(data, "data");
        int size = this.f71086a.size();
        this.f71086a.addAll(data);
        notifyItemRangeInserted(size, data.size());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f71086a.size();
    }

    public final List h() {
        return this.f71086a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(f holder, final int i11) {
        Intrinsics.h(holder, "holder");
        final OperationBean operationBean = (OperationBean) this.f71086a.get(i11);
        if (operationBean.getStatus()) {
            holder.f().setImageResource(operationBean.getEnable());
        } else {
            holder.f().setImageResource(operationBean.getDisable());
        }
        holder.g().setOnClickListener(new View.OnClickListener() { // from class: op.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                e.j(this.f71083a, operationBean, i11, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public f onCreateViewHolder(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_operation_layout, parent, false);
        Intrinsics.e(viewInflate);
        return new f(viewInflate);
    }

    public final void l(a itemClick) {
        Intrinsics.h(itemClick, "itemClick");
        this.f71087b = itemClick;
    }
}
