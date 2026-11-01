.class public final Lcom/transsnet/login/phone/widget/LoginPwdEditText$b;
.super Landroid/text/InputFilter$LengthFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/login/phone/widget/LoginPwdEditText;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/login/phone/widget/LoginPwdEditText;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsnet/login/phone/widget/LoginPwdEditText;)V
    .locals 0

    iput-object p2, p0, Lcom/transsnet/login/phone/widget/LoginPwdEditText$b;->a:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {p0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p2

    :cond_1
    add-int/2addr p3, p2

    invoke-virtual {p0}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result p2

    if-le p3, p2, :cond_2

    iget-object p2, p0, Lcom/transsnet/login/phone/widget/LoginPwdEditText$b;->a:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

    invoke-static {p2}, Lcom/transsnet/login/phone/widget/LoginPwdEditText;->access$outOfLengthLimit(Lcom/transsnet/login/phone/widget/LoginPwdEditText;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object p1
.end method
