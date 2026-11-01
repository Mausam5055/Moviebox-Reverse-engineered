import React, { useState } from 'react';
import { X, ShieldCheck, Key, Code, ArrowRight, Copy, Check, Terminal } from 'lucide-react';

export default function GatewayDebugger({ onClose }) {
  const [apiPath, setApiPath] = useState('/weex/member/play/url');
  const [query, setQuery] = useState('movieId=mov-001&definition=1080p');
  const [body, setBody] = useState('{"client":"AetherStream_v1.0","region":"US"}');
  const [signedResult, setSignedResult] = useState(null);
  const [loading, setLoading] = useState(false);
  const [copied, setCopied] = useState(false);

  const handleSign = async () => {
    setLoading(true);
    try {
      const res = await fetch('/api/gateway/sign', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ path: apiPath, query, body })
      });
      const data = await res.json();
      setSignedResult(data);
    } catch (err) {
      console.error('Sign error:', err);
    } finally {
      setLoading(false);
    }
  };

  const copyToClipboard = (text) => {
    navigator.clipboard.writeText(text);
    setCopied(true);
    setTimeout(() => setCopied(false), 2000);
  };

  return (
    <div className="debugger-backdrop" onClick={onClose}>
      <div className="debugger-drawer glass-panel" onClick={(e) => e.stopPropagation()}>
        <div className="debugger-header">
          <div className="header-left">
            <div className="shield-badge">
              <ShieldCheck size={20} className="text-emerald" />
            </div>
            <div>
              <h2 className="debugger-title">Transsion API Gateway Signer</h2>
              <p className="debugger-sub">Forensic HMAC-SHA256 Protocol Verification & Inspector</p>
            </div>
          </div>
          <button className="close-btn" onClick={onClose}>
            <X size={20} />
          </button>
        </div>

        <div className="debugger-body">
          {/* Reverse Engineered Evidence Banner */}
          <div className="evidence-card">
            <div className="evidence-title-row">
              <Key size={15} className="text-amber" />
              <span>Extracted Secret & Method Specification</span>
            </div>
            <p className="evidence-desc">
              Extracted from <code>com/transsion/gateway/GatewayInterceptor.smali</code> in APK classes2.dex:
            </p>
            <div className="code-snippet">
              <code>gateway_secret_online: 76iRl07s0xSN9jqmEWAt79EBJZulIQIsV64FZr2O</code>
              <code>Header: x-tr-signature: &lt;timestamp&gt;|2|&lt;HMAC_SHA256_HEX&gt;</code>
            </div>
          </div>

          {/* Test Form */}
          <div className="form-group">
            <label>API Endpoint Path</label>
            <input 
              type="text" 
              value={apiPath} 
              onChange={(e) => setApiPath(e.target.value)} 
              className="dbg-input" 
              placeholder="/api/v1/resource"
            />
          </div>

          <div className="form-group">
            <label>Query String</label>
            <input 
              type="text" 
              value={query} 
              onChange={(e) => setQuery(e.target.value)} 
              className="dbg-input" 
              placeholder="key=value&id=123"
            />
          </div>

          <div className="form-group">
            <label>JSON Request Body</label>
            <textarea 
              rows={3} 
              value={body} 
              onChange={(e) => setBody(e.target.value)} 
              className="dbg-input dbg-textarea" 
            />
          </div>

          <button 
            className="btn-primary sign-action-btn" 
            onClick={handleSign}
            disabled={loading}
          >
            <span>{loading ? 'Computing Digest...' : 'Generate Signed Headers'}</span>
            <ArrowRight size={16} />
          </button>

          {/* Output Results */}
          {signedResult && (
            <div className="result-container animate-fade-in">
              <div className="result-header">
                <Terminal size={16} />
                <span>Computed Gateway Headers</span>
                <button 
                  className="copy-btn" 
                  onClick={() => copyToClipboard(JSON.stringify(signedResult.signedHeaders, null, 2))}
                >
                  {copied ? <Check size={14} className="text-emerald" /> : <Copy size={14} />}
                  <span>{copied ? 'Copied' : 'Copy Headers'}</span>
                </button>
              </div>

              <div className="headers-table">
                {Object.entries(signedResult.signedHeaders).map(([k, v]) => (
                  <div key={k} className="header-row">
                    <span className="header-key">{k}:</span>
                    <span className="header-val">{v}</span>
                  </div>
                ))}
              </div>

              {/* Canonical Payload view */}
              <div className="canonical-box">
                <span className="canonical-label">CANONICAL STRING SPECIFICATION:</span>
                <pre>{`${signedResult.signedHeaders['x-tr-signature-accept'] || 'application/json'}\\n${signedResult.signedHeaders['x-tr-signature-content-type'] || 'application/json'}\\n...\\n${signedResult.path}\\n${query}`}</pre>
              </div>
            </div>
          )}
        </div>
      </div>

      <style>{`
        .debugger-backdrop {
          position: fixed;
          inset: 0;
          background: rgba(0, 0, 0, 0.7);
          backdrop-filter: blur(8px);
          z-index: 4000;
          display: flex;
          justify-content: flex-end;
          animation: fadeIn 0.2s ease;
        }
        .debugger-drawer {
          width: 100%;
          max-width: 580px;
          height: 100vh;
          background: #0d121c;
          border-left: 1px solid rgba(255, 255, 255, 0.12);
          display: flex;
          flex-direction: column;
          overflow-y: auto;
          box-shadow: -10px 0 40px rgba(0, 0, 0, 0.8);
        }
        .debugger-header {
          display: flex;
          align-items: center;
          justify-content: space-between;
          padding: 24px 28px;
          border-bottom: 1px solid rgba(255, 255, 255, 0.08);
        }
        .header-left {
          display: flex;
          align-items: center;
          gap: 14px;
        }
        .shield-badge {
          width: 40px;
          height: 40px;
          border-radius: 10px;
          background: rgba(16, 185, 129, 0.12);
          border: 1px solid rgba(16, 185, 129, 0.3);
          display: flex;
          align-items: center;
          justify-content: center;
        }
        .text-emerald {
          color: #10b981;
        }
        .text-amber {
          color: #f59e0b;
        }
        .debugger-title {
          font-size: 1.15rem;
          font-weight: 700;
          color: #fff;
        }
        .debugger-sub {
          font-size: 0.78rem;
          color: #94a3b8;
          margin-top: 2px;
        }
        .close-btn {
          color: #94a3b8;
          padding: 6px;
          border-radius: 6px;
        }
        .close-btn:hover {
          color: #fff;
          background: rgba(255, 255, 255, 0.1);
        }
        .debugger-body {
          padding: 24px 28px;
          display: flex;
          flex-direction: column;
          gap: 18px;
        }
        .evidence-card {
          padding: 16px;
          background: rgba(245, 158, 11, 0.06);
          border: 1px solid rgba(245, 158, 11, 0.2);
          border-radius: 10px;
        }
        .evidence-title-row {
          display: flex;
          align-items: center;
          gap: 8px;
          font-size: 0.82rem;
          font-weight: 700;
          color: #f59e0b;
          margin-bottom: 6px;
        }
        .evidence-desc {
          font-size: 0.78rem;
          color: #cbd5e1;
          margin-bottom: 8px;
        }
        .evidence-desc code {
          background: rgba(0, 0, 0, 0.3);
          padding: 2px 6px;
          border-radius: 4px;
          color: #93c5fd;
        }
        .code-snippet {
          background: rgba(0, 0, 0, 0.4);
          padding: 8px 12px;
          border-radius: 6px;
          display: flex;
          flex-direction: column;
          gap: 4px;
          font-family: monospace;
          font-size: 0.75rem;
          color: #10b981;
        }
        .form-group {
          display: flex;
          flex-direction: column;
          gap: 6px;
        }
        .form-group label {
          font-size: 0.78rem;
          font-weight: 600;
          color: #94a3b8;
          text-transform: uppercase;
        }
        .dbg-input {
          background: rgba(255, 255, 255, 0.05);
          border: 1px solid rgba(255, 255, 255, 0.1);
          border-radius: 8px;
          padding: 10px 14px;
          color: #fff;
          font-family: monospace;
          font-size: 0.85rem;
        }
        .dbg-input:focus {
          border-color: rgba(59, 130, 246, 0.5);
          background: rgba(255, 255, 255, 0.08);
        }
        .dbg-textarea {
          resize: vertical;
        }
        .sign-action-btn {
          width: 100%;
          justify-content: center;
          padding: 12px;
          margin-top: 6px;
        }
        .result-container {
          background: #080c14;
          border: 1px solid rgba(255, 255, 255, 0.1);
          border-radius: 10px;
          padding: 16px;
          margin-top: 10px;
        }
        .result-header {
          display: flex;
          align-items: center;
          justify-content: space-between;
          font-size: 0.82rem;
          font-weight: 700;
          color: #94a3b8;
          border-bottom: 1px solid rgba(255, 255, 255, 0.08);
          padding-bottom: 10px;
          margin-bottom: 12px;
        }
        .copy-btn {
          display: flex;
          align-items: center;
          gap: 6px;
          font-size: 0.75rem;
          color: #3b82f6;
          font-weight: 600;
        }
        .headers-table {
          display: flex;
          flex-direction: column;
          gap: 8px;
          font-family: monospace;
          font-size: 0.78rem;
        }
        .header-row {
          display: flex;
          flex-direction: column;
          gap: 2px;
          background: rgba(255, 255, 255, 0.03);
          padding: 6px 10px;
          border-radius: 6px;
        }
        .header-key {
          color: #38bdf8;
          font-weight: 600;
        }
        .header-val {
          color: #f1f5f9;
          word-break: break-all;
        }
        .canonical-box {
          margin-top: 14px;
          padding-top: 12px;
          border-top: 1px dashed rgba(255, 255, 255, 0.1);
        }
        .canonical-label {
          font-size: 0.68rem;
          font-weight: 700;
          color: #64748b;
          display: block;
          margin-bottom: 4px;
        }
        .canonical-box pre {
          font-family: monospace;
          font-size: 0.72rem;
          color: #94a3b8;
          white-space: pre-wrap;
        }
      `}</style>
    </div>
  );
}

