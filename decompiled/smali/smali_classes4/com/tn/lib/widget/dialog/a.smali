.class public final synthetic Lcom/tn/lib/widget/dialog/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/tn/lib/widget/dialog/TRDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/tn/lib/widget/dialog/TRDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tn/lib/widget/dialog/a;->a:Lcom/tn/lib/widget/dialog/TRDialog;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/tn/lib/widget/dialog/a;->a:Lcom/tn/lib/widget/dialog/TRDialog;

    invoke-static {v0, p1, p2}, Lcom/tn/lib/widget/dialog/TRDialog;->f0(Lcom/tn/lib/widget/dialog/TRDialog;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
