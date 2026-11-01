.class public final Llx/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Llx/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llx/a;

    invoke-direct {v0}, Llx/a;-><init>()V

    sput-object v0, Llx/a;->a:Llx/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/TextView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p3, v2, v2, p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v3, 0x1

    if-lt p2, v1, :cond_0

    new-instance p2, Landroid/text/style/ImageSpan;

    const/4 v1, 0x2

    invoke-direct {p2, p3, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/text/style/ImageSpan;

    invoke-direct {p2, p3, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    :goto_0
    const/16 p3, 0x11

    invoke-virtual {v0, p2, v2, v3, p3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
