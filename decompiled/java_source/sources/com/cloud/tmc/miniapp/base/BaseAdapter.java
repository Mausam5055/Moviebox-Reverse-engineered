package com.cloud.tmc.miniapp.base;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.cloud.tmc.miniapp.action.ResourcesAction;
import com.cloud.tmc.miniapp.base.BaseAdapter.BaseViewHolder;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseAdapter<VH extends BaseAdapter<VH>.BaseViewHolder> extends RecyclerView.Adapter implements ResourcesAction {
    private final Lazy childClickListeners$delegate;
    private final Lazy childLongClickListeners$delegate;
    private final Context context;
    private OnItemClickListener itemClickListener;
    private OnItemLongClickListener itemLongClickListener;
    private int positionOffset;
    private RecyclerView recyclerView;

    public abstract class BaseViewHolder extends RecyclerView.b0 implements View.OnClickListener, View.OnLongClickListener {
        public final /* synthetic */ BaseAdapter<VH> this$0;

        /* JADX WARN: Illegal instructions before constructor call */
        public BaseViewHolder(BaseAdapter baseAdapter, int i11) {
            View viewInflate = LayoutInflater.from(baseAdapter.getContext()).inflate(i11, (ViewGroup) baseAdapter.recyclerView, false);
            Intrinsics.g(viewInflate, "from(getContext()).infla…(id, recyclerView, false)");
            this(baseAdapter, viewInflate);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BaseViewHolder(BaseAdapter baseAdapter, View itemView) {
            super(itemView);
            Intrinsics.h(itemView, "itemView");
            this.this$0 = baseAdapter;
            if (baseAdapter.itemClickListener != null) {
                itemView.setOnClickListener(this);
            }
            if (baseAdapter.itemLongClickListener != null) {
                itemView.setOnLongClickListener(this);
            }
            int size = baseAdapter.getChildClickListeners().size();
            for (int i11 = 0; i11 < size; i11++) {
                View viewFindViewById = findViewById(this.this$0.getChildClickListeners().keyAt(i11));
                if (viewFindViewById != null) {
                    viewFindViewById.setOnClickListener(this);
                }
            }
            int size2 = this.this$0.getChildLongClickListeners().size();
            for (int i12 = 0; i12 < size2; i12++) {
                View viewFindViewById2 = findViewById(this.this$0.getChildLongClickListeners().keyAt(i12));
                if (viewFindViewById2 != null) {
                    viewFindViewById2.setOnLongClickListener(this);
                }
            }
        }

        public <V extends View> V findViewById(int i11) {
            return (V) getItemView().findViewById(i11);
        }

        public View getItemView() {
            View itemView = this.itemView;
            Intrinsics.g(itemView, "itemView");
            return itemView;
        }

        public int getViewHolderPosition() {
            return ((BaseAdapter) this.this$0).positionOffset + getLayoutPosition();
        }

        public abstract void onBindView(int i11);

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intrinsics.h(view, "view");
            int viewHolderPosition = getViewHolderPosition();
            if (viewHolderPosition < 0 || viewHolderPosition >= this.this$0.getItemCount()) {
                return;
            }
            if (view == getItemView()) {
                OnItemClickListener onItemClickListener = ((BaseAdapter) this.this$0).itemClickListener;
                if (onItemClickListener != null) {
                    onItemClickListener.onItemClick(((BaseAdapter) this.this$0).recyclerView, view, viewHolderPosition);
                    return;
                }
                return;
            }
            OnChildClickListener onChildClickListener = (OnChildClickListener) this.this$0.getChildClickListeners().get(view.getId());
            if (onChildClickListener != null) {
                onChildClickListener.onChildClick(((BaseAdapter) this.this$0).recyclerView, view, viewHolderPosition);
            }
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            Intrinsics.h(view, "view");
            int viewHolderPosition = getViewHolderPosition();
            if (viewHolderPosition >= 0 && viewHolderPosition < this.this$0.getItemCount()) {
                if (view == getItemView()) {
                    if (((BaseAdapter) this.this$0).itemLongClickListener == null) {
                        return false;
                    }
                    OnItemLongClickListener onItemLongClickListener = ((BaseAdapter) this.this$0).itemLongClickListener;
                    Intrinsics.e(onItemLongClickListener);
                    return onItemLongClickListener.onItemLongClick(((BaseAdapter) this.this$0).recyclerView, view, viewHolderPosition);
                }
                OnChildLongClickListener onChildLongClickListener = (OnChildLongClickListener) this.this$0.getChildLongClickListeners().get(view.getId());
                if (onChildLongClickListener != null) {
                    return onChildLongClickListener.onChildLongClick(((BaseAdapter) this.this$0).recyclerView, view, viewHolderPosition);
                }
            }
            return false;
        }
    }

    public interface OnChildClickListener {
        void onChildClick(RecyclerView recyclerView, View view, int i11);
    }

    public interface OnChildLongClickListener {
        boolean onChildLongClick(RecyclerView recyclerView, View view, int i11);
    }

    public interface OnItemClickListener {
        void onItemClick(RecyclerView recyclerView, View view, int i11);
    }

    public interface OnItemLongClickListener {
        boolean onItemLongClick(RecyclerView recyclerView, View view, int i11);
    }

    public BaseAdapter(Context context) {
        Intrinsics.h(context, "context");
        this.context = context;
        this.childClickListeners$delegate = LazyKt.b(new Function0<SparseArray<OnChildClickListener>>() { // from class: com.cloud.tmc.miniapp.base.BaseAdapter$childClickListeners$2
            @Override // kotlin.jvm.functions.Function0
            public final SparseArray<BaseAdapter.OnChildClickListener> invoke() {
                return new SparseArray<>();
            }
        });
        this.childLongClickListeners$delegate = LazyKt.b(new Function0<SparseArray<OnChildLongClickListener>>() { // from class: com.cloud.tmc.miniapp.base.BaseAdapter$childLongClickListeners$2
            @Override // kotlin.jvm.functions.Function0
            public final SparseArray<BaseAdapter.OnChildLongClickListener> invoke() {
                return new SparseArray<>();
            }
        });
    }

    private final void checkRecyclerViewState() {
        if (this.recyclerView != null) {
            throw new IllegalStateException("are you ok?");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SparseArray<OnChildClickListener> getChildClickListeners() {
        return (SparseArray) this.childClickListeners$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SparseArray<OnChildLongClickListener> getChildLongClickListeners() {
        return (SparseArray) this.childLongClickListeners$delegate.getValue();
    }

    public RecyclerView.m generateDefaultLayoutManager(Context context) {
        Intrinsics.h(context, "context");
        return new LinearLayoutManager(context);
    }

    @Override // com.cloud.tmc.miniapp.action.ResourcesAction
    public int getColor(int i11) {
        return ResourcesAction.DefaultImpls.getColor(this, i11);
    }

    @Override // com.cloud.tmc.miniapp.action.ResourcesAction
    public Context getContext() {
        return this.context;
    }

    @Override // com.cloud.tmc.miniapp.action.ResourcesAction
    public Drawable getDrawable(int i11) {
        return ResourcesAction.DefaultImpls.getDrawable(this, i11);
    }

    public RecyclerView getRecyclerView() {
        return this.recyclerView;
    }

    @Override // com.cloud.tmc.miniapp.action.ResourcesAction
    public Resources getResources() {
        return ResourcesAction.DefaultImpls.getResources(this);
    }

    @Override // com.cloud.tmc.miniapp.action.ResourcesAction
    public String getString(int i11) {
        return ResourcesAction.DefaultImpls.getString(this, i11);
    }

    @Override // com.cloud.tmc.miniapp.action.ResourcesAction
    public String getString(int i11, Object... objArr) {
        return ResourcesAction.DefaultImpls.getString(this, i11, objArr);
    }

    @Override // com.cloud.tmc.miniapp.action.ResourcesAction
    public <S> S getSystemService(Class<S> cls) {
        return (S) ResourcesAction.DefaultImpls.getSystemService(this, cls);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        RecyclerView recyclerView2;
        Intrinsics.h(recyclerView, "recyclerView");
        this.recyclerView = recyclerView;
        if ((recyclerView != null ? recyclerView.getLayoutManager() : null) != null || (recyclerView2 = this.recyclerView) == null) {
            return;
        }
        recyclerView2.setLayoutManager(generateDefaultLayoutManager(this.context));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(VH holder, int i11) {
        Intrinsics.h(holder, "holder");
        this.positionOffset = i11 - holder.getAdapterPosition();
        holder.onBindView(i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        Intrinsics.h(recyclerView, "recyclerView");
        this.recyclerView = null;
    }

    public void setOnChildClickListener(int i11, OnChildClickListener onChildClickListener) {
        checkRecyclerViewState();
        getChildClickListeners().put(i11, onChildClickListener);
    }

    public void setOnChildLongClickListener(int i11, OnChildLongClickListener onChildLongClickListener) {
        checkRecyclerViewState();
        getChildLongClickListeners().put(i11, onChildLongClickListener);
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        checkRecyclerViewState();
        this.itemClickListener = onItemClickListener;
    }

    public void setOnItemLongClickListener(OnItemLongClickListener onItemLongClickListener) {
        checkRecyclerViewState();
        this.itemLongClickListener = onItemLongClickListener;
    }
}
