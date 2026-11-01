.class public final synthetic Lcom/wecloud/load/lib/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Landroid/os/Parcel;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wecloud/load/lib/g;->a:Landroid/os/Parcel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/wecloud/load/lib/g;->a:Landroid/os/Parcel;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/wecloud/load/lib/h$a$a;->Y0(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
