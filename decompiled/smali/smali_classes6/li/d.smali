.class public final synthetic Lli/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lli/m;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lli/m;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lli/d;->a:Lli/m;

    iput-object p2, p0, Lli/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lli/d;->a:Lli/m;

    iget-object v1, p0, Lli/d;->b:Ljava/lang/String;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Lli/m;->q(Lli/m;Ljava/lang/String;Lz3/b;)Lcom/transsion/ad/db/plan/MbAdDbPlans;

    move-result-object p1

    return-object p1
.end method
