.class public final synthetic Ltq/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/search/fragment/SearchSubjectFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search/fragment/SearchSubjectFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltq/i;->a:Lcom/transsion/search/fragment/SearchSubjectFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ltq/i;->a:Lcom/transsion/search/fragment/SearchSubjectFragment;

    invoke-static {v0}, Lcom/transsion/search/fragment/SearchSubjectFragment;->f0(Lcom/transsion/search/fragment/SearchSubjectFragment;)V

    return-void
.end method
