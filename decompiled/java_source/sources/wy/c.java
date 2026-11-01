package wy;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsnet.login.R$id;
import com.transsnet.login.country.SelectCountryViewModel;
import com.transsnet.loginapi.bean.Country;

/* JADX INFO: loaded from: classes7.dex */
public class c extends RecyclerView.b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f77988a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f77989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f77990c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f77991d;

    public c(View view) {
        super(view);
        this.f77988a = view.findViewById(R$id.index_layout);
        this.f77989b = (TextView) view.findViewById(R$id.index_tv);
        this.f77990c = (TextView) view.findViewById(R$id.name);
        this.f77991d = (TextView) view.findViewById(R$id.code);
    }

    public void g(final Country country, final SelectCountryViewModel selectCountryViewModel) {
        this.itemView.setOnClickListener(new View.OnClickListener() { // from class: wy.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                selectCountryViewModel.r(country);
            }
        });
        if (TextUtils.isEmpty(country.getIndex())) {
            this.f77988a.setVisibility(8);
        } else {
            this.f77988a.setVisibility(0);
            this.f77989b.setText(country.getIndex());
        }
        this.f77990c.setText(country.getCountry());
        this.f77991d.setText(country.getCodeAndAdd());
    }
}
