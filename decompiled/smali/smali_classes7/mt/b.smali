.class public final Lmt/b;
.super Ljava/lang/Object;

# interfaces
.implements Llt/c;


# instance fields
.field private final a:Llt/c;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:F

.field private final f:F


# direct methods
.method public constructor <init>(Llt/c;IIIFF)V
    .locals 1

    const-string v0, "mStyle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmt/b;->a:Llt/c;

    iput p2, p0, Lmt/b;->b:I

    iput p3, p0, Lmt/b;->c:I

    iput p4, p0, Lmt/b;->d:I

    iput p5, p0, Lmt/b;->e:F

    iput p6, p0, Lmt/b;->f:F

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmt/b;->a:Llt/c;

    invoke-interface {v0, p1}, Llt/c;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getGravity()I
    .locals 1

    iget v0, p0, Lmt/b;->b:I

    return v0
.end method

.method public getHorizontalMargin()F
    .locals 1

    iget v0, p0, Lmt/b;->e:F

    return v0
.end method

.method public getVerticalMargin()F
    .locals 1

    iget v0, p0, Lmt/b;->f:F

    return v0
.end method

.method public getXOffset()I
    .locals 1

    iget v0, p0, Lmt/b;->c:I

    return v0
.end method

.method public getYOffset()I
    .locals 1

    iget v0, p0, Lmt/b;->d:I

    return v0
.end method
