.class public final synthetic Lcom/transsion/home/adapter/suboperate/adapter/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/transsion/home/adapter/suboperate/adapter/e;

.field public final synthetic c:Lcom/transsion/home/bean/AppointSubject;

.field public final synthetic d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(ZLcom/transsion/home/adapter/suboperate/adapter/e;Lcom/transsion/home/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/b;->a:Z

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/b;->b:Lcom/transsion/home/adapter/suboperate/adapter/e;

    iput-object p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/b;->c:Lcom/transsion/home/bean/AppointSubject;

    iput-object p4, p0, Lcom/transsion/home/adapter/suboperate/adapter/b;->d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/b;->a:Z

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/b;->b:Lcom/transsion/home/adapter/suboperate/adapter/e;

    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/b;->c:Lcom/transsion/home/bean/AppointSubject;

    iget-object v3, p0, Lcom/transsion/home/adapter/suboperate/adapter/b;->d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/home/adapter/suboperate/adapter/e;->C1(ZLcom/transsion/home/adapter/suboperate/adapter/e;Lcom/transsion/home/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
