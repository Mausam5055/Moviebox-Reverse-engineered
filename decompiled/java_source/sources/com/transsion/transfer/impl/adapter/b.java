package com.transsion.transfer.impl.adapter;

import android.annotation.SuppressLint;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.integration.bridge.NativeRequestBridge;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.transfer.R$id;
import com.transsion.transfer.R$layout;
import com.transsion.transfer.R$mipmap;
import com.transsion.transfer.R$string;
import com.transsion.transfer.impl.entity.FileData;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
import jg.c;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u000b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B%\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0002H\u0003¢\u0006\u0004\b\u0010\u0010\u0011J#\u0010\u0015\u001a\u00020\u00132\u0014\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0013¢\u0006\u0004\b\u0017\u0010\u0018J\u001d\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u001f\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010#\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020!H\u0007¢\u0006\u0004\b#\u0010$R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R$\u0010+\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*¨\u0006,"}, d2 = {"Lcom/transsion/transfer/impl/adapter/b;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/transfer/impl/entity/FileData;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lkotlinx/coroutines/n0;", "scope", "", "isServer", "Ljava/util/concurrent/CopyOnWriteArrayList;", "data", "<init>", "(Lkotlinx/coroutines/n0;ZLjava/util/concurrent/CopyOnWriteArrayList;)V", "", "G1", "()I", WebConstants.FIELD_ITEM, "F1", "(Lcom/transsion/transfer/impl/entity/FileData;)I", "Lkotlin/Function1;", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "J1", "(Lkotlin/jvm/functions/Function1;)V", "H1", "()V", "", NativeRequestBridge.KEY_FILE_PATH, "changeInfo", "I1", "(Ljava/lang/String;Lcom/transsion/transfer/impl/entity/FileData;)V", "holder", "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/transfer/impl/entity/FileData;)V", "", "size", "E1", "(J)Ljava/lang/String;", "F", "Lkotlinx/coroutines/n0;", "G", "Z", "H", "Lkotlin/jvm/functions/Function1;", "retryClickListener", "Transfer_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class b extends BaseQuickAdapter {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final n0 scope;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final boolean isServer;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private Function1<? super FileData, Unit> retryClickListener;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(n0 scope, boolean z10, CopyOnWriteArrayList<FileData> data) {
        super(R$layout.adapter_transfer_file_state, data);
        Intrinsics.h(scope, "scope");
        Intrinsics.h(data, "data");
        this.scope = scope;
        this.isServer = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D1(b bVar, FileData fileData, View view) {
        Function1<? super FileData, Unit> function1 = bVar.retryClickListener;
        if (function1 != null) {
            function1.invoke(fileData);
        }
    }

    @SuppressLint({"DefaultLocale"})
    private final int F1(FileData item) {
        try {
            return (int) ((RangesKt.g(item.getDownloadSize(), 0L) / RangesKt.g(item.getFileSize(), 1L)) * 100.0f);
        } catch (Exception unused) {
            return 0;
        }
    }

    private final int G1() {
        return TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1 ? GravityCompat.END : GravityCompat.START;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, final FileData item) {
        String strE1;
        String string;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getView(R$id.file_image);
        if (!this.isServer) {
            File coverFile = item.getCoverFile();
            if (coverFile.exists()) {
                shapeableImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                ej.a.a(shapeableImageView).load(coverFile).into(shapeableImageView);
            } else if (item.getCoverUrl().length() > 0 && StringsKt.W(item.getCoverUrl(), "/", false, 2, null) && new File(item.getCoverUrl()).exists()) {
                ej.a.a(shapeableImageView).load(new File(item.getCoverUrl())).into(shapeableImageView);
            } else {
                shapeableImageView.setScaleType(ImageView.ScaleType.CENTER);
                shapeableImageView.setImageResource(R$mipmap.transfer_img_loading_error);
                Unit unit = Unit.f67061a;
            }
        } else if (item.getCoverUrl().length() <= 0 || !new File(item.getCoverUrl()).exists()) {
            File coverFile2 = item.getCoverFile();
            if (coverFile2.exists()) {
                shapeableImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                ej.a.a(shapeableImageView).load(coverFile2).into(shapeableImageView);
            } else {
                shapeableImageView.setScaleType(ImageView.ScaleType.CENTER);
                shapeableImageView.setImageResource(R$mipmap.transfer_img_loading_error);
                Unit unit2 = Unit.f67061a;
            }
        } else {
            shapeableImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            if (StringsKt.W(item.getCoverUrl(), "/", false, 2, null)) {
                ej.a.a(shapeableImageView).load(new File(item.getCoverUrl())).into(shapeableImageView);
            } else {
                ej.a.a(shapeableImageView).load(item.getCoverUrl()).into(shapeableImageView);
            }
        }
        TextView textView = (TextView) holder.getView(R$id.file_name);
        textView.setText(item.getFileShowName());
        textView.setGravity(G1());
        TextView textView2 = (TextView) holder.getView(R$id.file_trans_ratio);
        if (item.getState() == 2) {
            strE1 = E1(item.getDownloadSize()) + "/" + E1(item.getFileSize());
        } else {
            strE1 = E1(item.getFileSize());
        }
        textView2.setText(strE1);
        ProgressBar progressBar = (ProgressBar) holder.getView(R$id.file_trans_ratio_pb);
        progressBar.setProgress(F1(item));
        if (item.getState() == 4) {
            c.h(progressBar);
        } else {
            c.k(progressBar);
        }
        ImageView imageView = (ImageView) holder.getView(R$id.file_trans_retry);
        if (item.getState() == 3) {
            c.k(imageView);
        } else {
            c.h(imageView);
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.transfer.impl.adapter.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                b.D1(this.f55658a, item, view);
            }
        });
        TextView textView3 = (TextView) holder.getView(R$id.file_trans_state);
        int state = item.getState();
        if (state != 0) {
            switch (state) {
                case 2:
                    string = textView3.getContext().getString(this.isServer ? R$string.transfer_server_transferring : R$string.transfer_receiver_transferring);
                    break;
                case 3:
                    string = textView3.getContext().getString(R$string.transfer_fail);
                    break;
                case 4:
                    string = textView3.getContext().getString(R$string.transfer_finished);
                    break;
                case 5:
                    string = textView3.getContext().getString(R$string.transfer_disconnect);
                    break;
                case 6:
                    string = textView3.getContext().getString(R$string.transfer_no_file);
                    break;
                case 7:
                    string = textView3.getContext().getString(R$string.transfer_space_limit);
                    break;
                default:
                    string = textView3.getContext().getString(R$string.transfer_connecting);
                    break;
            }
        } else {
            string = textView3.getContext().getString(R$string.transfer_connecting);
        }
        textView3.setText(string);
        int state2 = item.getState();
        String str = "#2ADC66";
        if (state2 != 0) {
            switch (state2) {
                case 3:
                case 5:
                case 6:
                case 7:
                    str = "#F03930";
                    break;
                case 4:
                    str = "#8E8E8E";
                    break;
            }
        }
        textView3.setTextColor(Color.parseColor(str));
    }

    @SuppressLint({"DefaultLocale"})
    public final String E1(long size) {
        double dG = RangesKt.g(size, 1L) / 1048576.0d;
        StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
        String str = String.format("%.1fMB", Arrays.copyOf(new Object[]{Double.valueOf(dG)}, 1));
        Intrinsics.g(str, "format(...)");
        return str;
    }

    public final void H1() {
        Iterator<T> it = getData().iterator();
        while (it.hasNext()) {
            FileData fileData = (FileData) it.next();
            if (fileData.getState() != 4) {
                fileData.setState(5);
            }
        }
        notifyDataSetChanged();
    }

    public final void I1(String filePath, FileData changeInfo) {
        Object next;
        Intrinsics.h(filePath, "filePath");
        Intrinsics.h(changeInfo, "changeInfo");
        Iterator<T> it = getData().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((FileData) next).getFileRemotePath(), filePath));
        FileData fileData = (FileData) next;
        if (fileData != null) {
            int iIndexOf = getData().indexOf(fileData);
            FileData fileData2 = (FileData) getData().get(iIndexOf);
            fileData2.setState(changeInfo.getState());
            fileData2.setDownloadSize(changeInfo.getDownloadSize());
            fileData2.setFileSize(changeInfo.getFileSize());
            notifyItemChanged(iIndexOf);
        }
    }

    public final void J1(Function1<? super FileData, Unit> listener) {
        this.retryClickListener = listener;
    }
}
