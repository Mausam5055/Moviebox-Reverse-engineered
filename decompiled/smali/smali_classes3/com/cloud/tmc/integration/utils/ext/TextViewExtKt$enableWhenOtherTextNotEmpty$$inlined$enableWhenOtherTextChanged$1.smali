.class public final Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt$enableWhenOtherTextNotEmpty$$inlined$enableWhenOtherTextChanged$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt;->enableWhenOtherTextNotEmpty(Landroid/widget/TextView;[Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J*\u0010\r\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a8\u0006\u000f\u00b8\u0006\u0011"
    }
    d2 = {
        "androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "text",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "core-ktx_release",
        "androidx/core/widget/TextViewKt$doAfterTextChanged$$inlined$addTextChangedListener$default$1",
        "com/cloud/tmc/integration/utils/ext/TextViewExtKt$enableWhenOtherTextChanged$lambda$3$$inlined$doAfterTextChanged$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $textViews$inlined:[Landroid/widget/TextView;

.field final synthetic $this_enableWhenOtherTextChanged$inlined:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;[Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt$enableWhenOtherTextNotEmpty$$inlined$enableWhenOtherTextChanged$1;->$this_enableWhenOtherTextChanged$inlined:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt$enableWhenOtherTextNotEmpty$$inlined$enableWhenOtherTextChanged$1;->$textViews$inlined:[Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    iget-object p1, p0, Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt$enableWhenOtherTextNotEmpty$$inlined$enableWhenOtherTextChanged$1;->$this_enableWhenOtherTextChanged$inlined:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt$enableWhenOtherTextNotEmpty$$inlined$enableWhenOtherTextChanged$1;->$textViews$inlined:[Landroid/widget/TextView;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt;->isTextNotEmpty(Landroid/widget/TextView;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
