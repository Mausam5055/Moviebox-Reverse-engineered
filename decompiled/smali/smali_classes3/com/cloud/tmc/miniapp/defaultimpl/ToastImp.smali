.class public final Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/ToastProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO00o;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO00o;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO00o;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp;->Companion:Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO00o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showActionSheet(Lcom/google/gson/JsonArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 26

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p7

    move-object/from16 v5, p9

    move-object/from16 v6, p11

    const-string v7, "ToastImp"

    const-string v8, "errMsg"

    const-string v0, "actions"

    move-object/from16 v9, p1

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelText"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelColor"

    move-object/from16 v12, p8

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v15, 0x1

    if-gt v15, v0, :cond_12

    const/16 v10, 0xb

    if-ge v0, v10, :cond_12

    const/4 v10, 0x0

    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v11, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$showActionSheet$data$itemList$1;

    invoke-direct {v11}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$showActionSheet$data$itemList$1;-><init>()V

    invoke-virtual {v11}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v11

    const-string v13, "object : TypeToken<ArrayList<String>>() {}.type"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v11}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v11, "itemList parse error!"

    invoke-static {v7, v11, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v10

    :goto_0
    if-eqz v0, :cond_0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v18, v11

    check-cast v18, Ljava/lang/String;

    new-instance v11, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;

    const/16 v24, 0x79

    const/16 v25, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v11

    move-object/from16 v19, p5

    invoke-direct/range {v16 .. v25}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_b

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$showActionSheet$data$3;

    invoke-direct {v9}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$showActionSheet$data$3;-><init>()V

    invoke-virtual {v9}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    const-string v11, "object :\n               \u2026og.ActionItem>>() {}.type"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v9}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;

    invoke-virtual {v11}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getText()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Action\'s text is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v9, v0

    check-cast v9, Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;

    invoke-direct {v0, v5}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;-><init>(Landroid/content/Context;)V

    if-eqz v3, :cond_d

    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_6

    :cond_4
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0OO()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v5

    const/4 v7, 0x0

    if-eqz v5, :cond_7

    if-eqz v2, :cond_6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    goto :goto_3

    :cond_5
    move v8, v7

    goto :goto_4

    :cond_6
    :goto_3
    move v8, v15

    :goto_4
    xor-int/2addr v8, v15

    invoke-static {v5, v8}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    :cond_7
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0OO()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v5

    if-nez v5, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0O0()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v2

    if-eqz v2, :cond_b

    if-eqz v3, :cond_9

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_a

    :cond_9
    move v7, v15

    :cond_a
    xor-int/lit8 v5, v7, 0x1

    invoke-static {v2, v5}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    :cond_b
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0O0()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v2

    if-nez v2, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    :goto_6
    const-string v2, "showType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0oO:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v3, Lcom/cloud/tmc/miniapp/dialog/OooO0o;->OooO0O0:Ljava/lang/String;

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0oO:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    move-object/from16 v2, p10

    iput-object v2, v1, Lcom/cloud/tmc/miniapp/dialog/OooO0o;->OooO0OO:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO00o(Ljava/util/ArrayList;)Lcom/cloud/tmc/miniapp/dialog/OooOO0;

    move-result-object v0

    if-eqz p6, :cond_11

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0oO:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    if-eqz v4, :cond_10

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e

    goto :goto_7

    :cond_e
    move-object v4, v10

    :goto_7
    if-nez v4, :cond_f

    goto :goto_8

    :cond_f
    move-object v11, v4

    goto :goto_9

    :cond_10
    :goto_8
    const-string v2, "Cancel"

    move-object v11, v2

    :goto_9
    new-instance v2, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;

    const/16 v17, 0x20

    const/16 v18, 0x0

    const-string v10, "Cancel"

    const-string v13, "#4D191F2B"

    const/4 v14, 0x1

    const/4 v3, 0x0

    const-string v16, "#0F191F2B"

    move-object v9, v2

    move-object/from16 v12, p8

    move v4, v15

    move-object v15, v3

    invoke-direct/range {v9 .. v18}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v2}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->addItem(Ljava/lang/Object;)V

    goto :goto_a

    :cond_11
    move v4, v15

    :goto_a
    new-instance v1, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO0O0;

    invoke-direct {v1, v6}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO0O0;-><init>(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    iput-object v1, v0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0oo:Lcom/cloud/tmc/miniapp/dialog/OooOO0O;

    invoke-virtual {v0, v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCancelable(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;

    invoke-virtual {v0, v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCanceledOnTouchOutside(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->show()V

    return-void

    :cond_12
    if-eqz v6, :cond_13

    :try_start_3
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", must be between 1 and 10 : AS10003"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_13
    return-void

    :goto_b
    invoke-static {v7, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v6, :cond_14

    const-string v0, "Parameter error: AS10001"

    invoke-static {v8, v0, v6}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    :cond_14
    return-void
.end method

.method public showAddHomeSuccessfulToast()V
    .locals 0

    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showAddhomeSuccessToast()V

    return-void
.end method

.method public showCommonDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/integration/callback/CommonDialogCallback;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    const/4 v1, 0x1

    invoke-direct {v0, p9, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;-><init>(Landroid/content/Context;Z)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p9

    if-nez p9, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0Oo(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    :cond_3
    :goto_1
    if-lez p3, :cond_4

    invoke-virtual {v0, p3}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(I)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Z)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    :goto_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz p5, :cond_7

    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0Oo()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const/16 p2, 0xc

    invoke-virtual {v0, p5, p2}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_3
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0O0(Z)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    :cond_8
    if-eqz p7, :cond_a

    invoke-interface {p7}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v0, p7}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0OO(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    :cond_a
    :goto_4
    if-eqz p6, :cond_c

    :try_start_0
    invoke-interface {p6}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_b

    goto :goto_5

    :cond_b
    invoke-static {p6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0O0(I)Lcom/cloud/tmc/miniapp/dialog/OooOo00;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    const-string p2, "[ToastImp]: set common dialog cancel button color error"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "cancel button color error"

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp;->toast(Ljava/lang/String;)V

    :cond_c
    :goto_5
    if-eqz p8, :cond_e

    :try_start_1
    invoke-interface {p8}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_d

    goto :goto_6

    :cond_d
    invoke-static {p8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0OO(I)Lcom/cloud/tmc/miniapp/dialog/OooOo00;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception p1

    const-string p2, "[ToastImp]: set common dialog confirm button color error"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "confirm button color error"

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp;->toast(Ljava/lang/String;)V

    :cond_e
    :goto_6
    new-instance p1, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO0OO;

    invoke-direct {p1, p10}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO0OO;-><init>(Lcom/cloud/tmc/integration/callback/CommonDialogCallback;)V

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooOo;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCanceledOnTouchOutside(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    return-void
.end method

.method public showCommonDialogWithOperate(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/integration/callback/CommonDialogCallback;)Lcom/cloud/tmc/integration/callback/CommonDialogOperate;
    .locals 2

    const-string v0, "context"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    const/4 v1, 0x1

    invoke-direct {v0, p9, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;-><init>(Landroid/content/Context;Z)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p9

    if-nez p9, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0Oo(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    :cond_3
    :goto_1
    if-lez p3, :cond_4

    invoke-virtual {v0, p3}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(I)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Z)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    :goto_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz p5, :cond_7

    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0Oo()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const/16 p2, 0xc

    invoke-virtual {v0, p5, p2}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_3
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0O0(Z)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    :cond_8
    if-eqz p7, :cond_a

    invoke-interface {p7}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v0, p7}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0OO(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    :cond_a
    :goto_4
    if-eqz p6, :cond_c

    :try_start_0
    invoke-interface {p6}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_b

    goto :goto_5

    :cond_b
    invoke-static {p6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0O0(I)Lcom/cloud/tmc/miniapp/dialog/OooOo00;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    const-string p2, "[ToastImp]: set common dialog cancel button color error"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "cancel button color error"

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp;->toast(Ljava/lang/String;)V

    :cond_c
    :goto_5
    if-eqz p8, :cond_e

    :try_start_1
    invoke-interface {p8}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_d

    goto :goto_6

    :cond_d
    invoke-static {p8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0OO(I)Lcom/cloud/tmc/miniapp/dialog/OooOo00;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception p1

    const-string p2, "[ToastImp]: set common dialog confirm button color error"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "confirm button color error"

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp;->toast(Ljava/lang/String;)V

    :cond_e
    :goto_6
    new-instance p1, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO0o;

    invoke-direct {p1, p10}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO0o;-><init>(Lcom/cloud/tmc/integration/callback/CommonDialogCallback;)V

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooOo;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCanceledOnTouchOutside(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    new-instance p1, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO;

    invoke-direct {p1, v0}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOo00;)V

    return-object p1
.end method

.method public showModal(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    const/4 v1, 0x0

    invoke-direct {v0, p10, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;-><init>(Landroid/content/Context;Z)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p10

    if-nez p10, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0Oo(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    :cond_1
    :goto_0
    iget-object p1, v0, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0Oo:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    xor-int/lit8 p10, p4, 0x1

    invoke-static {p1, p10}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    :cond_2
    iget-object p1, v0, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0o0:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3

    invoke-static {p1, p4}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    :cond_3
    if-eqz p5, :cond_7

    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p5, :cond_7

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0oO()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_1
    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    :cond_9
    :goto_2
    const/4 p1, 0x1

    if-eqz p3, :cond_d

    if-eqz p6, :cond_c

    invoke-interface {p6}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0Oo()Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_b

    goto :goto_3

    :cond_b
    const/16 p3, 0xc

    invoke-virtual {v0, p6, p3}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_3
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0O0(Z)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    :cond_d
    if-eqz p8, :cond_f

    invoke-interface {p8}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual {v0, p8}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0OO(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    :cond_f
    :goto_4
    if-eqz p7, :cond_11

    :try_start_0
    invoke-interface {p7}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_10

    goto :goto_5

    :cond_10
    invoke-static {p7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0O0(I)Lcom/cloud/tmc/miniapp/dialog/OooOo00;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p2

    const-string p3, "[ToastImp]: set common dialog cancel button color error"

    invoke-static {p3, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p2, "cancel button color error"

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp;->toast(Ljava/lang/String;)V

    :cond_11
    :goto_5
    if-eqz p9, :cond_13

    :try_start_1
    invoke-interface {p9}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_12

    goto :goto_6

    :cond_12
    invoke-static {p9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0OO(I)Lcom/cloud/tmc/miniapp/dialog/OooOo00;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception p2

    const-string p3, "[ToastImp]: set common dialog confirm button color error"

    invoke-static {p3, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p2, "confirm button color error"

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp;->toast(Ljava/lang/String;)V

    :cond_13
    :goto_6
    new-instance p2, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooOO0;

    invoke-direct {p2, p11, p4, v0}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooOO0;-><init>(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;ZLcom/cloud/tmc/miniapp/dialog/OooOo00;)V

    invoke-virtual {v0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooOo;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Z)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCanceledOnTouchOutside(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    return-void
.end method

.method public toast(I)V
    .locals 7

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move v0, p1

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(IIJZILjava/lang/Object;)V

    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 9

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(Ljava/lang/CharSequence;IJZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 9

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(Ljava/lang/CharSequence;IJZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method
