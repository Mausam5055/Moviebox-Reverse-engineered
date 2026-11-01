.class public Lo5/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lp5/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lq5/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lp5/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lp5/a;-><init>(I)V

    iput-object v0, p0, Lo5/a;->a:Lp5/a;

    iput-object p1, v0, Lp5/a;->C:Landroid/content/Context;

    iput-object p2, v0, Lp5/a;->a:Lq5/c;

    return-void
.end method


# virtual methods
.method public a()Lcom/bigkoo/pickerview/view/a;
    .locals 2

    new-instance v0, Lcom/bigkoo/pickerview/view/a;

    iget-object v1, p0, Lo5/a;->a:Lp5/a;

    invoke-direct {v0, v1}, Lcom/bigkoo/pickerview/view/a;-><init>(Lp5/a;)V

    return-object v0
.end method

.method public b(I)Lo5/a;
    .locals 1

    iget-object v0, p0, Lo5/a;->a:Lp5/a;

    iput p1, v0, Lp5/a;->Q:I

    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo5/a;
    .locals 1

    iget-object v0, p0, Lo5/a;->a:Lp5/a;

    iput-object p1, v0, Lp5/a;->n:Ljava/lang/String;

    iput-object p2, v0, Lp5/a;->o:Ljava/lang/String;

    iput-object p3, v0, Lp5/a;->p:Ljava/lang/String;

    iput-object p4, v0, Lp5/a;->q:Ljava/lang/String;

    iput-object p5, v0, Lp5/a;->r:Ljava/lang/String;

    iput-object p6, v0, Lp5/a;->s:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/util/Calendar;Ljava/util/Calendar;)Lo5/a;
    .locals 1

    iget-object v0, p0, Lo5/a;->a:Lp5/a;

    iput-object p1, v0, Lp5/a;->h:Ljava/util/Calendar;

    iput-object p2, v0, Lp5/a;->i:Ljava/util/Calendar;

    return-object p0
.end method

.method public e(I)Lo5/a;
    .locals 1

    iget-object v0, p0, Lo5/a;->a:Lp5/a;

    iput p1, v0, Lp5/a;->P:I

    return-object p0
.end method

.method public f(I)Lo5/a;
    .locals 1

    iget-object v0, p0, Lo5/a;->a:Lp5/a;

    iput p1, v0, Lp5/a;->O:I

    return-object p0
.end method
