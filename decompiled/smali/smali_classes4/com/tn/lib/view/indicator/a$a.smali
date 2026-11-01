.class public Lcom/tn/lib/view/indicator/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tn/lib/view/indicator/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/tn/lib/view/indicator/a;->p:I

    invoke-direct {p0, v0}, Lcom/tn/lib/view/indicator/a$a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1, p1, p1, p1}, Lcom/tn/lib/view/indicator/a$a;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tn/lib/view/indicator/a$a;->a:I

    iput p2, p0, Lcom/tn/lib/view/indicator/a$a;->b:I

    iput p3, p0, Lcom/tn/lib/view/indicator/a$a;->c:I

    iput p4, p0, Lcom/tn/lib/view/indicator/a$a;->d:I

    return-void
.end method
