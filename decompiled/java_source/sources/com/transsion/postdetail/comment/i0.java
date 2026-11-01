package com.transsion.postdetail.comment;

import android.text.Editable;
import android.text.TextWatcher;
import com.transsion.moviedetailapi.bean.CommentBean;

/* JADX INFO: loaded from: classes6.dex */
public interface i0 extends TextWatcher {

    public static final class a {
        public static void a(i0 i0Var, Editable editable) {
        }

        public static void b(i0 i0Var, CharSequence charSequence, int i11, int i12, int i13) {
        }
    }

    void E();

    void S(Editable editable, CommentBean commentBean);

    @Override // android.text.TextWatcher
    void afterTextChanged(Editable editable);

    @Override // android.text.TextWatcher
    void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13);
}
