.class public final synthetic Ltq/h;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/search/fragment/SearchSubjectFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search/fragment/SearchSubjectFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltq/h;->a:Lcom/transsion/search/fragment/SearchSubjectFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ltq/h;->a:Lcom/transsion/search/fragment/SearchSubjectFragment;

    invoke-static {v0}, Lcom/transsion/search/fragment/SearchSubjectFragment;->i0(Lcom/transsion/search/fragment/SearchSubjectFragment;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
