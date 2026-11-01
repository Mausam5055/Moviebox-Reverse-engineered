.class public final Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\r\n\u0002\u0008\u0002\u001a\n\u0010\u000b\u001a\u00020\u000c*\u00020\u0003\u001a#\u0010\r\u001a\u00020\u000c*\u00020\u00032\u0012\u0010\u000e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00100\u000f\"\u00020\u0010\u00a2\u0006\u0002\u0010\u0011\u001aL\u0010\u0012\u001a\u00020\u000c*\u00020\u00032\u0012\u0010\u0013\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u000f\"\u00020\u00032!\u0008\u0004\u0010\u0014\u001a\u001b\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u000f\u0012\u0004\u0012\u00020\u00010\u0015\u00a2\u0006\u0002\u0008\u0016H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017\u001a#\u0010\u0018\u001a\u00020\u000c*\u00020\u00032\u0012\u0010\u0013\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u000f\"\u00020\u0003\u00a2\u0006\u0002\u0010\u0019\u001a\n\u0010\u001a\u001a\u00020\u0001*\u00020\u0003\u001a\n\u0010\u001b\u001a\u00020\u0001*\u00020\u0003\u001a\u0014\u0010\u001c\u001a\u00020\u000c*\u00020\u00032\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u001a\n\u0010\u001f\u001a\u00020\u000c*\u00020\u0003\"*\u0010\u0002\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00018\u00c6\u0002@\u00c6\u0002X\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0002\u0010\u0004\"\u0004\u0008\u0005\u0010\u0006\"\u0016\u0010\u0007\u001a\u00020\u0008*\u00020\u00038\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006 "
    }
    d2 = {
        "value",
        "",
        "isPasswordVisible",
        "Landroid/widget/TextView;",
        "(Landroid/widget/TextView;)Z",
        "setPasswordVisible",
        "(Landroid/widget/TextView;Z)V",
        "textString",
        "",
        "getTextString",
        "(Landroid/widget/TextView;)Ljava/lang/String;",
        "addUnderline",
        "",
        "enableWhenAllChecked",
        "checkBoxes",
        "",
        "Landroid/widget/CheckBox;",
        "(Landroid/widget/TextView;[Landroid/widget/CheckBox;)V",
        "enableWhenOtherTextChanged",
        "textViews",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroid/widget/TextView;[Landroid/widget/TextView;Lkotlin/jvm/functions/Function1;)V",
        "enableWhenOtherTextNotEmpty",
        "(Landroid/widget/TextView;[Landroid/widget/TextView;)V",
        "isTextEmpty",
        "isTextNotEmpty",
        "setMultilingualText",
        "multilingualText",
        "",
        "transparentHighlightColor",
        "com.cloud.tmc.integration"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public static synthetic a(Landroid/widget/TextView;[Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt;->enableWhenAllChecked$lambda$7$lambda$6(Landroid/widget/TextView;[Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static final addUnderline(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    return-void
.end method

.method public static final varargs enableWhenAllChecked(Landroid/widget/TextView;[Landroid/widget/CheckBox;)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkBoxes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    new-instance v3, Lcom/cloud/tmc/integration/utils/ext/b;

    invoke-direct {v3, p0, p1}, Lcom/cloud/tmc/integration/utils/ext/b;-><init>(Landroid/widget/TextView;[Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private static final enableWhenAllChecked$lambda$7$lambda$6(Landroid/widget/TextView;[Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string p2, "$this_enableWhenAllChecked"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$checkBoxes"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p2, p1

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    :goto_1
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public static final enableWhenOtherTextChanged(Landroid/widget/TextView;[Landroid/widget/TextView;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "[",
            "Landroid/widget/TextView;",
            "Lkotlin/jvm/functions/Function1<",
            "-[",
            "Landroid/widget/TextView;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textViews"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    new-instance v3, Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt$enableWhenOtherTextChanged$lambda$3$$inlined$doAfterTextChanged$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt$enableWhenOtherTextChanged$lambda$3$$inlined$doAfterTextChanged$1;-><init>(Landroid/widget/TextView;Lkotlin/jvm/functions/Function1;[Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final varargs enableWhenOtherTextNotEmpty(Landroid/widget/TextView;[Landroid/widget/TextView;)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textViews"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/widget/TextView;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-static {v3}, Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt;->isTextNotEmpty(Landroid/widget/TextView;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    new-instance v3, Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt$enableWhenOtherTextNotEmpty$$inlined$enableWhenOtherTextChanged$1;

    invoke-direct {v3, p0, p1}, Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt$enableWhenOtherTextNotEmpty$$inlined$enableWhenOtherTextChanged$1;-><init>(Landroid/widget/TextView;[Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static final getTextString(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final isPasswordVisible(Landroid/widget/TextView;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final isTextEmpty(Landroid/widget/TextView;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isTextNotEmpty(Landroid/widget/TextView;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final setMultilingualText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/utils/ext/a;->a(Landroid/text/BidiFormatter;Ljava/lang/CharSequence;)Z

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    const/4 p1, 0x7

    goto :goto_2

    :cond_2
    const/4 p1, 0x6

    :goto_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_4

    :cond_3
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x800005

    goto :goto_3

    :cond_4
    const p1, 0x800003

    :goto_3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :goto_4
    return-void
.end method

.method public static final setPasswordVisible(Landroid/widget/TextView;Z)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void
.end method

.method public static final transparentHighlightColor(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    return-void
.end method
