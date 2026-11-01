.class public final synthetic Lcom/transsion/sunflower/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic a:Lcom/transsion/sunflower/FSNManager;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sunflower/FSNManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/sunflower/b;->a:Lcom/transsion/sunflower/FSNManager;

    iput-object p2, p0, Lcom/transsion/sunflower/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sunflower/b;->a:Lcom/transsion/sunflower/FSNManager;

    iget-object v1, p0, Lcom/transsion/sunflower/b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/sunflower/FSNManager;->a(Lcom/transsion/sunflower/FSNManager;Ljava/lang/String;)V

    return-void
.end method
