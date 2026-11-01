.class public final Lcom/transsnet/login/w;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsnet/login/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsnet/login/w;

    invoke-direct {v0}, Lcom/transsnet/login/w;-><init>()V

    sput-object v0, Lcom/transsnet/login/w;->a:Lcom/transsnet/login/w;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tvPrivacy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsnet/login/R$string;->login_sign_up_privacy:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/transsnet/login/R$string;->login_privacy:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/transsnet/login/R$string;->login_user_agreement:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/transsnet/login/w$a;

    invoke-direct {v4, p1}, Lcom/transsnet/login/w$a;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/transsnet/login/w$b;

    invoke-direct {v5, p1}, Lcom/transsnet/login/w$b;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 v6, 0x1

    invoke-static {v0, v2, p1, v6}, Lkotlin/text/StringsKt;->k0(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v7

    invoke-static {v0, v3, p1, v6}, Lkotlin/text/StringsKt;->k0(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v0

    if-gez v7, :cond_0

    move v7, p1

    :cond_0
    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v7

    const/16 v2, 0x21

    invoke-virtual {v1, v4, v7, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {v1, v5, p1, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
