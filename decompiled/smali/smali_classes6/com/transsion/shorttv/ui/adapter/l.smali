.class public final synthetic Lcom/transsion/shorttv/ui/adapter/l;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/transsion/shorttv/ui/adapter/q;

.field public final synthetic c:Lcom/transsion/shorttv/bean/AppointSubject;

.field public final synthetic d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(ZLcom/transsion/shorttv/ui/adapter/q;Lcom/transsion/shorttv/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/shorttv/ui/adapter/l;->a:Z

    iput-object p2, p0, Lcom/transsion/shorttv/ui/adapter/l;->b:Lcom/transsion/shorttv/ui/adapter/q;

    iput-object p3, p0, Lcom/transsion/shorttv/ui/adapter/l;->c:Lcom/transsion/shorttv/bean/AppointSubject;

    iput-object p4, p0, Lcom/transsion/shorttv/ui/adapter/l;->d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/adapter/l;->a:Z

    iget-object v1, p0, Lcom/transsion/shorttv/ui/adapter/l;->b:Lcom/transsion/shorttv/ui/adapter/q;

    iget-object v2, p0, Lcom/transsion/shorttv/ui/adapter/l;->c:Lcom/transsion/shorttv/bean/AppointSubject;

    iget-object v3, p0, Lcom/transsion/shorttv/ui/adapter/l;->d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/shorttv/ui/adapter/q;->D1(ZLcom/transsion/shorttv/ui/adapter/q;Lcom/transsion/shorttv/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
