.class public final synthetic Ltq/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/search/fragment/SearchSubjectFragment;

.field public final synthetic b:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search/fragment/SearchSubjectFragment;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltq/b;->a:Lcom/transsion/search/fragment/SearchSubjectFragment;

    iput-object p2, p0, Ltq/b;->b:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ltq/b;->a:Lcom/transsion/search/fragment/SearchSubjectFragment;

    iget-object v1, p0, Ltq/b;->b:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/transsion/search/fragment/SearchSubjectFragment;->d0(Lcom/transsion/search/fragment/SearchSubjectFragment;Landroid/widget/EditText;)V

    return-void
.end method
