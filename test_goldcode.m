if ~exist('n', 'var')
  n = 5;
end

code = goldcode(n);

num_codes = size(code, 1);
mat = zeros(num_codes);
for ii = 1:num_codes
  ref = code(ii, :);
  for jj = 1:num_codes
    mat(ii, jj) = sum(ref .* code(jj, :));
  end
end
h = pcolor(mat);
set(h, 'EdgeColor', 'none');
