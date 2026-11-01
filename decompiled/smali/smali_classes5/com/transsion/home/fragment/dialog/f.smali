.class public final synthetic Lcom/transsion/home/fragment/dialog/f;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/dialog/GradeSelectDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/dialog/GradeSelectDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/dialog/f;->a:Lcom/transsion/home/fragment/dialog/GradeSelectDialog;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/dialog/f;->a:Lcom/transsion/home/fragment/dialog/GradeSelectDialog;

    check-cast p1, Lcom/transsion/home/bean/GradeItem;

    invoke-static {v0, p1}, Lcom/transsion/home/fragment/dialog/GradeSelectDialog;->q0(Lcom/transsion/home/fragment/dialog/GradeSelectDialog;Lcom/transsion/home/bean/GradeItem;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
