function P = DeCasteljau(PuntiDiControllo,t)
% Implementa l'algoritmo di De Casteljau per i punti di controllo
% definiti dalle righe della matrice PuntiDiControllo.

  function P = C(k,r,t)
    if r == 0
      P = kron(ones(size(t,1),1),PuntiDiControllo(k,:));
    else
      P = diag(1 - t) * C(k,r - 1,t) + diag(t) * C(k + 1,r - 1,t);
    endif
  endfunction

  P = C(1,size(PuntiDiControllo,1) - 1,t);

endfunction
