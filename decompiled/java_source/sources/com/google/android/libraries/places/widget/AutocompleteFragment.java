package com.google.android.libraries.places.widget;

import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.annotation.Nullable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.libraries.places.R;
import com.google.android.libraries.places.api.model.LocationBias;
import com.google.android.libraries.places.api.model.LocationRestriction;
import com.google.android.libraries.places.api.model.Place;
import com.google.android.libraries.places.api.model.TypeFilter;
import com.google.android.libraries.places.internal.zzkd;
import com.google.android.libraries.places.internal.zzkr;
import com.google.android.libraries.places.internal.zzkw;
import com.google.android.libraries.places.internal.zzmt;
import com.google.android.libraries.places.internal.zznx;
import com.google.android.libraries.places.widget.listener.PlaceSelectionListener;
import com.google.android.libraries.places.widget.model.AutocompleteActivityMode;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class AutocompleteFragment extends Fragment {
    private View zza;
    private View zzb;
    private EditText zzc;

    @Nullable
    private LocationBias zzd;

    @Nullable
    private LocationRestriction zze;

    @Nullable
    private String zzf;

    @Nullable
    private TypeFilter zzg;

    @Nullable
    private zznx zzh;

    @Nullable
    private PlaceSelectionListener zzi;

    private final void zzb() {
        this.zzb.setVisibility(true != this.zzc.getText().toString().isEmpty() ? 0 : 8);
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i11, int i12, @Nullable Intent intent) throws Throwable {
        try {
            getView().setEnabled(true);
            if (i11 == 30421) {
                if (this.zzi == null) {
                    if (Log.isLoggable("Places", 5)) {
                        Log.w("Places", "No PlaceSelectionListener is set. No result will be delivered.");
                    }
                } else if (i12 == -1) {
                    Place placeFromIntent = Autocomplete.getPlaceFromIntent(intent);
                    this.zzi.onPlaceSelected(placeFromIntent);
                    setText(placeFromIntent.getName());
                } else if (i12 == 2) {
                    this.zzi.onError(Autocomplete.getStatusFromIntent(intent));
                    i12 = 2;
                }
                i11 = 30421;
            }
            super.onActivityResult(i11, i12, intent);
        } catch (Error e11) {
            e = e11;
            zzkd.zzb(e);
            throw e;
        } catch (RuntimeException e12) {
            e = e12;
            zzkd.zzb(e);
            throw e;
        }
    }

    @Override // android.app.Fragment
    @RecentlyNonNull
    public View onCreateView(@RecentlyNonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        try {
            View viewInflate = layoutInflater.inflate(R.layout.places_autocomplete_fragment, viewGroup, false);
            this.zza = viewInflate.findViewById(R.id.places_autocomplete_search_button);
            this.zzb = viewInflate.findViewById(R.id.places_autocomplete_clear_button);
            this.zzc = (EditText) viewInflate.findViewById(R.id.places_autocomplete_search_input);
            this.zzc.setHint(zzkw.zzc(layoutInflater.getContext(), R.string.places_autocomplete_search_hint));
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.google.android.libraries.places.widget.zzc
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) throws Throwable {
                    this.zza.zza(view);
                }
            };
            this.zza.setOnClickListener(onClickListener);
            this.zzc.setOnClickListener(onClickListener);
            this.zzb.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.libraries.places.widget.zzd
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.zza.setText("");
                }
            });
            zzb();
            viewInflate.setEnabled(false);
            return viewInflate;
        } catch (Error | RuntimeException e11) {
            zzkd.zzb(e11);
            throw e11;
        }
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        try {
            this.zza = null;
            this.zzb = null;
            this.zzc = null;
            super.onDestroyView();
        } catch (Error | RuntimeException e11) {
            zzkd.zzb(e11);
            throw e11;
        }
    }

    public void setCountry(@Nullable String str) {
        this.zzf = str;
    }

    public void setHint(@Nullable CharSequence charSequence) throws Throwable {
        if (charSequence == null) {
            try {
                charSequence = getString(R.string.places_autocomplete_search_hint);
            } catch (Error e11) {
                e = e11;
                zzkd.zzb(e);
                throw e;
            } catch (RuntimeException e12) {
                e = e12;
                zzkd.zzb(e);
                throw e;
            }
        }
        this.zzc.setHint(charSequence);
        this.zza.setContentDescription(charSequence);
    }

    public void setLocationBias(@Nullable LocationBias locationBias) {
        this.zzd = locationBias;
    }

    public void setLocationRestriction(@Nullable LocationRestriction locationRestriction) {
        this.zze = locationRestriction;
    }

    public void setOnPlaceSelectedListener(@Nullable PlaceSelectionListener placeSelectionListener) {
        this.zzi = placeSelectionListener;
    }

    public void setPlaceFields(@RecentlyNonNull List<Place.Field> list) {
        try {
            zzmt.zzc(list, "Place Fields must not be null.");
            this.zzh = zznx.zzj(list);
            getView().setEnabled(true);
        } catch (Error | RuntimeException e11) {
            zzkd.zzb(e11);
            throw e11;
        }
    }

    public void setText(@Nullable CharSequence charSequence) {
        try {
            this.zzc.setText(charSequence);
            zzb();
        } catch (Error | RuntimeException e11) {
            zzkd.zzb(e11);
            throw e11;
        }
    }

    public void setTypeFilter(@Nullable TypeFilter typeFilter) {
        this.zzg = typeFilter;
    }

    final /* synthetic */ void zza(View view) throws Throwable {
        if (!getView().isEnabled()) {
            zzmt.zzc(this.zzh, "Place Fields must be set.");
            if (Log.isLoggable("Places", 6)) {
                Log.e("Places", "Autocomplete activity cannot be launched until fragment is enabled.");
                return;
            }
            return;
        }
        Autocomplete.IntentBuilder intentBuilder = new Autocomplete.IntentBuilder(AutocompleteActivityMode.OVERLAY, this.zzh);
        intentBuilder.setInitialQuery(this.zzc.getText().toString());
        intentBuilder.setHint(this.zzc.getHint().toString());
        intentBuilder.setCountry(this.zzf);
        intentBuilder.setLocationBias(this.zzd);
        intentBuilder.setLocationRestriction(this.zze);
        intentBuilder.setTypeFilter(this.zzg);
        intentBuilder.zza(zzkr.FRAGMENT);
        Intent intentBuild = intentBuilder.build(getActivity());
        getView().setEnabled(false);
        startActivityForResult(intentBuild, 30421);
    }
}
