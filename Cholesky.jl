function checa_dets(A)
    n, m = size(A)
    if n != m
        error("Erro! A matriz não é quadrada")
    end
    
    for i = 1:n
        if det(A[1:i, 1:i]) == 0
            error("Erro! det(A_$i) = 0")
            return false
        end
    end

    return true
end

function pos_def(A)
    if(A == A' && checa_dets(A))
        return true
    else
        return false
    end
end

function Cholesky(A)
    n, m = size(A)
    if n != m
        error("Erro! A matriz não é quadrada")
    end

    if !pos_def(A)
        error("Erro! A matriz não é positiva definida")
    end

    G = zeros(n, n)

    for i = 1:n
        for j = 1:i
            sum = 0.0
            for k = 1:(j-1)
                sum += G[i, k] * G[j, k]
            end
            if i == j
                G[i, j] = sqrt(A[i, i] - sum)
            else
                G[i, j] = (A[i, j] - sum) / G[j, j]
            end
        end
    end
    return G
end