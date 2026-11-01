.class public Lcom/transsion/push/tracker/FirebaseTracker;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/transsion/push/tracker/FirebaseTracker;

.field private static b:Lcom/transsion/push/tracker/ITracker;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/push/tracker/FirebaseTracker;
    .locals 1

    sget-object v0, Lcom/transsion/push/tracker/FirebaseTracker;->a:Lcom/transsion/push/tracker/FirebaseTracker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/push/tracker/FirebaseTracker;

    invoke-direct {v0}, Lcom/transsion/push/tracker/FirebaseTracker;-><init>()V

    sput-object v0, Lcom/transsion/push/tracker/FirebaseTracker;->a:Lcom/transsion/push/tracker/FirebaseTracker;

    :cond_0
    sget-object v0, Lcom/transsion/push/tracker/FirebaseTracker;->a:Lcom/transsion/push/tracker/FirebaseTracker;

    return-object v0
.end method


# virtual methods
.method a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/push/tracker/FirebaseTracker;->b:Lcom/transsion/push/tracker/ITracker;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/transsion/push/tracker/ITracker;->track(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public setListener(Lcom/transsion/push/tracker/ITracker;)V
    .locals 0

    sput-object p1, Lcom/transsion/push/tracker/FirebaseTracker;->b:Lcom/transsion/push/tracker/ITracker;

    return-void
.end method
