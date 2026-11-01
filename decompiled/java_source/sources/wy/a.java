package wy;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsnet.login.R$layout;
import com.transsnet.login.country.SelectCountryViewModel;
import com.transsnet.loginapi.bean.Country;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class a extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SelectCountryViewModel f77983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List f77984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f77985c;

    public a(Context context, SelectCountryViewModel selectCountryViewModel, List list) {
        this.f77984b = list;
        this.f77985c = context;
        this.f77983a = selectCountryViewModel;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(c cVar, int i11) {
        List list = this.f77984b;
        if (list == null || i11 < 0 || i11 >= list.size()) {
            return;
        }
        cVar.g((Country) this.f77984b.get(i11), this.f77983a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List list = this.f77984b;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public c onCreateViewHolder(ViewGroup viewGroup, int i11) {
        View viewInflate = LayoutInflater.from(this.f77985c).inflate(R$layout.login_item_country, viewGroup, false);
        if (viewInflate.getLayoutParams() == null) {
            viewInflate.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
        }
        return new c(viewInflate);
    }

    public void i(List list) {
        this.f77984b = list;
        notifyDataSetChanged();
    }
}
