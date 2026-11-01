.class public Lr6/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

.field private b:Lp6/g;

.field private c:Z

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .locals 1

    const-string v0, "baseQuickAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr6/g;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    const/4 p1, 0x1

    iput p1, p0, Lr6/g;->e:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-boolean v0, p0, Lr6/g;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lr6/g;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lr6/g;->e:I

    if-gt p1, v0, :cond_1

    iget-object p1, p0, Lr6/g;->b:Lp6/g;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lp6/g;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lp6/g;)V
    .locals 0

    iput-object p1, p0, Lr6/g;->b:Lp6/g;

    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lr6/g;->e:I

    return-void
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lr6/g;->c:Z

    return-void
.end method

.method public final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lr6/g;->d:Z

    return-void
.end method
