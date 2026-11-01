package com.cloud.tmc.miniapp.ui.adapter;

import android.content.Context;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniapp.base.BaseAdapter;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class NormalBaseAdapter<T> extends BaseAdapter<NormalBaseAdapter<T>.NormalViewHolder> {
    private List<T> dataSet;

    public abstract class NormalViewHolder extends BaseAdapter<NormalBaseAdapter<T>.NormalViewHolder>.BaseViewHolder {
        public NormalViewHolder(int i11) {
            super(NormalBaseAdapter.this, i11);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NormalBaseAdapter(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        this.dataSet = new ArrayList();
    }

    public void addData(List<T> list) {
        if (list != null) {
            try {
                if (list.isEmpty()) {
                    return;
                }
                this.dataSet.addAll(list);
                notifyItemRangeInserted(this.dataSet.size() - list.size(), list.size());
            } catch (Throwable th2) {
                TmcLogger.e("", th2);
            }
        }
    }

    public void addItem(int i11, T t11) {
        if (i11 < this.dataSet.size()) {
            this.dataSet.add(i11, t11);
        } else {
            this.dataSet.add(t11);
            i11 = this.dataSet.size() - 1;
        }
        notifyItemInserted(i11);
    }

    public void addItem(T t11) {
        addItem(this.dataSet.size(), t11);
    }

    public void clearData() {
        this.dataSet.clear();
        notifyDataSetChanged();
    }

    public int getCount() {
        return this.dataSet.size();
    }

    public List<T> getData() {
        return this.dataSet;
    }

    public T getItem(int i11) {
        return this.dataSet.get(i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return getCount();
    }

    public void removeItem(int i11) {
        this.dataSet.remove(i11);
        notifyItemRemoved(i11);
    }

    public void setData(List<T> list) {
        if (list == null) {
            this.dataSet.clear();
        } else {
            this.dataSet = list;
        }
        notifyDataSetChanged();
    }
}
