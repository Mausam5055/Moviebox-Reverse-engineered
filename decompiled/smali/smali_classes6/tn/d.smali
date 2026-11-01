.class public final synthetic Ltn/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ltn/e;


# direct methods
.method public synthetic constructor <init>(Ltn/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltn/d;->a:Ltn/e;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ltn/d;->a:Ltn/e;

    check-cast p1, Lcom/transsion/moviedetailapi/bean/SubjectPostCount;

    invoke-static {v0, p1}, Ltn/e;->a(Ltn/e;Lcom/transsion/moviedetailapi/bean/SubjectPostCount;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
