package op;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.widget.TnTextView;
import com.transsion.publish.R$color;
import com.transsion.publish.R$drawable;
import com.transsion.publish.R$layout;
import com.transsion.publish.R$string;
import com.transsion.publish.view.operation.OperationBean;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class i extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f71096a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f71097b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map f71098c;

    public i() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f71098c = linkedHashMap;
        linkedHashMap.put(String.valueOf(R$drawable.ic_film_photos), Integer.valueOf(R$string.photo));
        this.f71098c.put(String.valueOf(R$drawable.ic_film_videos), Integer.valueOf(R$string.video));
        this.f71098c.put(String.valueOf(R$drawable.ic_film_audio), Integer.valueOf(R$string.audio));
        this.f71098c.put(String.valueOf(R$drawable.ic_film_work), Integer.valueOf(R$string.mention_a_specific_movie_audio));
        this.f71098c.put(String.valueOf(R$drawable.ic_film_link), Integer.valueOf(R$string.add_a_link));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(i iVar, OperationBean operationBean, int i11, View view) {
        b bVar = iVar.f71097b;
        if (bVar != null) {
            bVar.a(operationBean, i11);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f71096a.size();
    }

    public final List h() {
        return this.f71096a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(g holder, final int i11) {
        Intrinsics.h(holder, "holder");
        final OperationBean operationBean = (OperationBean) this.f71096a.get(i11);
        if (operationBean.getStatus()) {
            holder.g().setImageResource(operationBean.getEnable());
            holder.f().setTextColor(com.blankj.utilcode.util.h.a(R$color.color_ff333333));
        } else {
            holder.g().setImageResource(operationBean.getDisable());
            holder.f().setTextColor(com.blankj.utilcode.util.h.a(R$color.color_ff999999));
        }
        TnTextView tnTextViewF = holder.f();
        Integer num = (Integer) this.f71098c.get(String.valueOf(operationBean.getEnable()));
        tnTextViewF.setTextById(num != null ? num.intValue() : 0);
        holder.h().setOnClickListener(new View.OnClickListener() { // from class: op.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                i.j(this.f71093a, operationBean, i11, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public g onCreateViewHolder(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_operation_vertical_layout, parent, false);
        Intrinsics.e(viewInflate);
        return new g(viewInflate);
    }

    public final void l(b itemClick) {
        Intrinsics.h(itemClick, "itemClick");
        this.f71097b = itemClick;
    }

    public final void setData(List data) {
        Intrinsics.h(data, "data");
        this.f71096a.clear();
        this.f71096a.addAll(data);
        notifyDataSetChanged();
    }
}
