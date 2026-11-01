.class public final Lcom/transsion/usercenter/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/t$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/transsion/usercenter/t$a;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/usercenter/t;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/usercenter/t$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/t;->b:Lcom/transsion/usercenter/t$a;

    return-void
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dest"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/usercenter/t;->a:I

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    sub-int/2addr p6, p5

    sub-int/2addr p4, p6

    sub-int/2addr v0, p4

    const-string p4, ""

    if-gtz v0, :cond_0

    iget-object p1, p0, Lcom/transsion/usercenter/t;->b:Lcom/transsion/usercenter/t$a;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/transsion/usercenter/t$a;->a()V

    goto :goto_0

    :cond_0
    sub-int/2addr p3, p2

    if-lt v0, p3, :cond_1

    const/4 p4, 0x0

    goto :goto_0

    :cond_1
    add-int/2addr v0, p2

    add-int/lit8 p3, v0, -0x1

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    invoke-static {p3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p3

    if-eqz p3, :cond_2

    add-int/lit8 v0, v0, -0x1

    if-ne v0, p2, :cond_2

    return-object p4

    :cond_2
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p4

    :cond_3
    :goto_0
    return-object p4
.end method
